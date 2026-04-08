import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';

abstract class FeedRepository {
  /// Watch feed reactively from local cache with remote refresh
  StreamEither<List<Post>> watchFeed({int limit, int offset});

  TaskResult<List<Post>> refreshFeed({int pageNo, int pageSize, String sortBy});

  TaskResult<List<Post>> getFeedByFanHub({
    required String subdomain,
    int pageNo = 0,
    int pageSize = 20,
    String sortBy = 'createdAt',
    String? postHashtags,
    String? authorUsername,
  });
}
