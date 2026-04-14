import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';
import 'package:sep490_mo/features/post/data/models/report_models.dart';

abstract class PostModerationRepository {
  TaskResult<List<PostModeration>> getPendingPosts({
    required String subdomain,
    required int pageNo,
    required int pageSize,
    required String sortBy,
  });

  TaskResult<List<PostModeration>> getAllPosts({
    required String subdomain,
    required int pageNo,
    required int pageSize,
    required String sortBy,
  });

  TaskResult<List<Post>> getAllReports({
    required int fanHubId,
    required int pageNo,
    required int pageSize,
    required String sortBy,
  });

  TaskResult<List<Post>> getPendingReports({
    required int fanHubId,
    required int pageNo,
    required int pageSize,
    required String sortBy,
  });

  TaskResult<List<PostWithReport>> getPostsWithReports({
    required int fanHubId,
    required int pageNo,
    required int pageSize,
    required String sortBy,
  });

  TaskVoid aiRevalidate(int postId);

  TaskVoid reviewPost(int postId, PostStatus status);

  TaskVoid reviewPostBulk(List<int> postIds, PostStatus status);

  TaskVoid resolveReport(int reportId, String resolveMessage);

  TaskVoid resolveReportBulk(List<int> reportIds, String resolveMessage);
}
