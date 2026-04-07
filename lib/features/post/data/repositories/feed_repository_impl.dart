import 'package:fpdart/fpdart.dart';
import 'package:sep490_mo/core/error/error_handler.dart';
import 'package:sep490_mo/core/error/failures.dart';
import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/post/data/datasources/local/feed_local_datasource.dart';
import 'package:sep490_mo/features/post/data/datasources/remote/feed_remote_datasource.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';
import 'package:sep490_mo/features/post/data/repositories/feed_repository.dart';

class FeedRepositoryImpl implements FeedRepository {
  final FeedRemoteDatasource _remoteDataSource;
  final FeedLocalDataSource _localDataSource;

  // /// Cache TTL for feed data (5 minutes)
  // static const _cacheTTL = Duration(minutes: 5);

  FeedRepositoryImpl({
    required FeedRemoteDatasource remoteDataSource,
    required FeedLocalDataSource localDataSource,
  }) : _remoteDataSource = remoteDataSource,
       _localDataSource = localDataSource;

  // @override
  // TaskResult<List<Post>> getFeed(int pageNo, int pageSize, String sortBy) {
  //   return ErrorHandler.execute(() async {
  //     // For pagination, always fetch from remote (cache is only for first page)
  //     if (pageNo > 1) {
  //       return await _remoteDataSource.getFeed(pageNo, pageSize, sortBy);
  //     }
  //
  //     // STEP 1: Check cache for first page
  //     final cachedFeed = await ErrorHandler.executeOrNull(
  //       () => _localDataSource.getCachedFeed(limit: pageSize),
  //     );
  //
  //     if (cachedFeed != null && cachedFeed.isNotEmpty) {
  //       final now = DateTime.now();
  //       // Use createdAt of the newest post to determine cache freshness
  //       final newestPost = cachedFeed.reduce(
  //         (a, b) => a.createdAt.isAfter(b.createdAt) ? a : b,
  //       );
  //       final cacheAge = now.difference(newestPost.createdAt);
  //
  //       if (cacheAge < _cacheTTL) {
  //         // Cache is fresh - return immediately
  //         return cachedFeed;
  //       }
  //       // Cache is stale - will fetch from remote below
  //     }
  //
  //     // STEP 2: Cache miss or stale - fetch from remote
  //     try {
  //       final feed = await _remoteDataSource.getFeed(pageNo, pageSize, sortBy);
  //
  //       // Update cache (non-critical - use executeOrNull)
  //       await ErrorHandler.executeOrNull(() => _localDataSource.cacheFeed(feed));
  //
  //       return feed;
  //     } catch (e) {
  //       // STEP 3: Remote failed - fallback to stale cache if available
  //       if (cachedFeed != null && cachedFeed.isNotEmpty) {
  //         debugPrint('Remote fetch failed, returning stale cached feed');
  //         return cachedFeed;
  //       }
  //
  //       // No cache available - rethrow to let ErrorHandler catch it
  //       rethrow;
  //     }
  //   });
  // }

  @override
  StreamEither<List<Post>> watchFeed({int limit = 10, int offset = 0}) {
    return _localDataSource
        .watchFeed(limit: limit, offset: offset)
        .map((feedData) {
          return Right<Failure, List<Post>>(feedData);
        })
        .handleError((error, stackTrace) {
          return Left<Failure, List<Post>>(ErrorHandler.handle(error));
        });
  }

  /// Refresh cache from remote in the background
  @override
  TaskResult<List<Post>> refreshFeed({int pageNo = 0, int pageSize = 20, String sortBy = 'createdAt'}) {
    return ErrorHandler.execute(() async {
      final posts = await _remoteDataSource.getFeed(pageNo, pageSize, sortBy);
      ErrorHandler.executeOrNull(() => _localDataSource.cacheFeed(posts));
      return posts;
    });
  }
}
