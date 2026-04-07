import 'package:sep490_mo/features/post/data/models/post_models.dart';

abstract class FeedLocalDataSource {
  Future<void> cacheFeed(List<Post> posts);

  Future<List<Post>> getCachedFeed({int limit});

  Future<List<Post>> getCachedFeedByHub({required int hubId, int limit});

  Future<Post?> getCachedFeedItem(int postId);

  Stream<List<Post>> watchFeed({required int limit, required int offset});

  Stream<List<Post>> watchFeedByHub({required int hubId, required int limit, required int offset});

  Future<void> deleteCachedFeedItem(int postId);

  Future<void> clearAllCachedFeed();
}
