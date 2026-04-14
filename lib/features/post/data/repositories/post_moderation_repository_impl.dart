import 'package:sep490_mo/core/error/error_handler.dart';
import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/post/data/datasources/remote/post_moderation_remote_datasource.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';
import 'package:sep490_mo/features/post/data/models/report_models.dart';
import 'package:sep490_mo/features/post/data/repositories/post_moderation_repository.dart';

class PostModerationRepositoryImpl implements PostModerationRepository {
  final PostModerationRemoteDatasource _remoteDataSource;

  PostModerationRepositoryImpl({
    required PostModerationRemoteDatasource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  @override
  TaskResult<List<PostModeration>> getPendingPosts({
    required String subdomain,
    required int pageNo,
    required int pageSize,
    required String sortBy,
  }) {
    return ErrorHandler.execute(() async {
      return await _remoteDataSource.getPendingPosts(
        subdomain: subdomain,
        pageNo: pageNo,
        pageSize: pageSize,
        sortBy: sortBy,
      );
    });
  }

  @override
  TaskResult<List<PostModeration>> getAllPosts({
    required String subdomain,
    required int pageNo,
    required int pageSize,
    required String sortBy,
  }) {
    return ErrorHandler.execute(() async {
      return await _remoteDataSource.getAllPosts(
        subdomain: subdomain,
        pageNo: pageNo,
        pageSize: pageSize,
        sortBy: sortBy,
      );
    });
  }

  @override
  TaskResult<List<Post>> getAllReports({
    required int fanHubId,
    required int pageNo,
    required int pageSize,
    required String sortBy,
  }) {
    return ErrorHandler.execute(() async {
      return await _remoteDataSource.getAllReports(
        fanHubId: fanHubId,
        pageNo: pageNo,
        pageSize: pageSize,
        sortBy: sortBy,
      );
    });
  }

  @override
  TaskResult<List<Post>> getPendingReports({
    required int fanHubId,
    required int pageNo,
    required int pageSize,
    required String sortBy,
  }) {
    return ErrorHandler.execute(() async {
      return await _remoteDataSource.getPendingReports(
        fanHubId: fanHubId,
        pageNo: pageNo,
        pageSize: pageSize,
        sortBy: sortBy,
      );
    });
  }

  @override
  TaskResult<List<PostWithReport>> getPostsWithReports({
    required int fanHubId,
    required int pageNo,
    required int pageSize,
    required String sortBy,
  }) {
    return ErrorHandler.execute(() async {
      return await _remoteDataSource.getPostsWithReports(
        fanHubId: fanHubId,
        pageNo: pageNo,
        pageSize: pageSize,
        sortBy: sortBy,
      );
    });
  }

  @override
  TaskVoid aiRevalidate(int postId) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.aiRevalidate(postId);
    });
  }

  @override
  TaskVoid reviewPost(int postId, PostStatus status) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.reviewPost(postId, status);
    });
  }

  @override
  TaskVoid reviewPostBulk(List<int> postIds, PostStatus status) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.reviewPostBulk(postIds, status);
    });
  }

  @override
  TaskVoid resolveReport(int reportId, String resolveMessage) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.resolveReport(reportId, resolveMessage);
    });
  }

  @override
  TaskVoid resolveReportBulk(List<int> reportIds, String resolveMessage) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.resolveReportBulk(reportIds, resolveMessage);
    });
  }
}
