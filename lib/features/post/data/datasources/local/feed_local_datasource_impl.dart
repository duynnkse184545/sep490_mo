import 'dart:convert';

import 'package:sep490_mo/core/database/app_database.dart';
import 'package:sep490_mo/core/database/daos/post_dao.dart';
import 'package:sep490_mo/core/error/exceptions.dart';
import 'package:sep490_mo/features/post/data/datasources/local/feed_local_datasource.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';

class FeedLocalDataSourceImpl implements FeedLocalDataSource {
  final PostDao _postDao;

  /// Maximum number of posts to keep in cache
  static const int maxCacheSize = 30;

  FeedLocalDataSourceImpl(this._postDao);

  @override
  Future<void> cacheFeed(List<Post> posts) async {
    try {
      final entities = posts
          .map(
            (post) => PostEntity(
              postId: post.postId,
              fanHubId: post.fanHubId,
              postData: jsonEncode(post.toJson()),
              createdAt: post.createdAt,
              cachedAt: DateTime.now(),
            ),
          )
          .toList();

      await _postDao.cachePosts(entities);
      await _postDao.evictOldPosts(maxCacheSize);
    } catch (e) {
      throw CacheException('Failed to cache feed: $e');
    }
  }

  @override
  Future<List<Post>> getCachedFeed({int limit = 10}) async {
    try {
      final entities = await _postDao.getCachedPosts(limit: limit);
      return _parsePostEntities(entities);
    } catch (e) {
      throw CacheException('Failed to get cached feed: $e');
    }
  }

  @override
  Future<List<Post>> getCachedFeedByHub({
    required int hubId,
    int limit = 10,
  }) async {
    try {
      final entities = await _postDao.getCachedPostsByHub(
        hubId: hubId,
        limit: limit,
      );
      return _parsePostEntities(entities);
    } catch (e) {
      throw CacheException('Failed to get cached feed for hub: $e');
    }
  }

  @override
  Future<Post?> getCachedFeedItem(int postId) async {
    try {
      final entity = await _postDao.getCachedPostById(postId);
      if (entity == null) return null;
      return Post.fromJson(jsonDecode(entity.postData));
    } catch (e) {
      throw CacheException('Failed to get cached feed item: $e');
    }
  }

  @override
  Stream<List<Post>> watchFeed({required int limit, required int offset}) {
    return _postDao
        .watchCachedPosts(limit: limit, offset: offset)
        .map(_parsePostEntities)
        .handleError(
          (e) => throw CacheException('Failed to watch cached feed for user: $e'),
        );
  }

  @override
  Stream<List<Post>> watchFeedByHub({required int hubId, required int limit, required int offset}) {
    return _postDao
        .watchCachedPostsByHub(hubId: hubId, limit: limit, offset: offset)
        .map(_parsePostEntities)
        .handleError(
          (e) => throw CacheException('Failed to watch cached feed by hub: $e'),
        );
  }

  @override
  Future<void> deleteCachedFeedItem(int postId) async {
    try {
      await _postDao.deletePost(postId);
    } catch (e) {
      throw CacheException('Failed to delete cached feed item: $e');
    }
  }

  @override
  Future<void> clearAllCachedFeed() async {
    try {
      await _postDao.clearAllPosts();
    } catch (e) {
      throw CacheException('Failed to clear cached feed: $e');
    }
  }

  /// Helper to parse list of PostCacheEntity to Post
  List<Post> _parsePostEntities(List<PostEntity> entities) {
    /// expand — 0 or more outputs per input, return either list 1 item, or empty list
    return entities.expand<Post>((entity) {
      try {
        return [Post.fromJson(jsonDecode(entity.postData))];
      } catch (e) {
      // print('⚠️ Failed to parse post ${entity.postId}: $e');
      // print('   Raw postData: ${entity.postData}');
      // print('   Stack trace: $stackTrace');
      return [];
      }
    }).toList();
  }
}
