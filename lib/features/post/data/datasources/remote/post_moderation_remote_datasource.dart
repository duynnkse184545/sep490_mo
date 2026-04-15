import 'package:sep490_mo/features/post/data/models/post_models.dart';
import 'package:sep490_mo/features/post/data/models/report_models.dart';

abstract class PostModerationRemoteDatasource {
  Future<List<PostModeration>> getPendingPosts({
    required String subdomain,
    required int pageNo,
    required int pageSize,
    required String sortBy,
  });

  Future<List<PostModeration>> getAllPosts({
    required int fanHubId,
    required int pageNo,
    required int pageSize,
    required String sortBy,
  });

  Future<List<Post>> getAllReports({
    required int fanHubId,
    required int pageNo,
    required int pageSize,
    required String sortBy,
  });

  Future<List<Post>> getPendingReports({
    required int fanHubId,
    required int pageNo,
    required int pageSize,
    required String sortBy,
  });

  Future<List<PostWithReport>> getPostsWithReports({
    required int fanHubId,
    required int pageNo,
    required int pageSize,
    required String sortBy,
  });


  Future<void> aiRevalidate(int postId);

  Future<void> reviewPost(int postId, PostStatus status);

  Future<void> reviewPostBulk(List<int> postIds, PostStatus status);

  Future<void> resolveReport(int reportId, String resolveMessage);

  Future<void> resolveReportBulk(List<int> reportIds, String resolveMessage);
}
