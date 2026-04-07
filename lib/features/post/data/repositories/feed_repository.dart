import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';

abstract class FeedRepository {
  // /// Get feed with cache-first strategy (one-time fetch)
  // TaskResult<List<Post>> getFeed(int pageNo, int pageSize, String sortBy);

  /// Watch feed reactively from local cache with remote refresh
  StreamEither<List<Post>> watchFeed({int limit, int offset});

  TaskResult<List<Post>> refreshFeed({int pageNo, int pageSize, String sortBy});
}