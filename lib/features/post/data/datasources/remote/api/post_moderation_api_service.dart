import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';
import 'package:sep490_mo/features/post/data/models/report_models.dart';

part 'post_moderation_api_service.g.dart';

@RestApi()
abstract class PostModerationApiService {
  factory PostModerationApiService(Dio dio) = _PostModerationApiService;

  @GET('/posts/fan-hub/subdomain/{subdomain}/pending')
  Future<ApiResponse<List<PostModeration>>> getPendingPosts(
    @Path('subdomain') String subdomain,
    @Query('pageNo') int pageNo,
    @Query('pageSize') int pageSize,
    @Query('sortBy') String sortBy,
  );

  @GET('/posts/fan-hub/{fanHubId}/all')
  Future<ApiResponse<List<PostModeration>>> getAllPosts(
    @Path('fanHubId') int fanHubId,
    @Query('pageNo') int pageNo,
    @Query('pageSize') int pageSize,
    @Query('sortBy') String sortBy,
  );

  @GET('/posts/reports/posts/{fanHubId}')
  Future<ApiResponse<List<Post>>> getAllReports(
    @Path('fanHubId') int fanHubId,
    @Query('pageNo') int pageNo,
    @Query('pageSize') int pageSize,
    @Query('sortBy') String sortBy,
  );

  @GET('/posts/reports/pending-posts/{fanHubId}')
  Future<ApiResponse<List<Post>>> getPendingReports(
    @Path('fanHubId') int fanHubId,
    @Query('pageNo') int pageNo,
    @Query('pageSize') int pageSize,
    @Query('sortBy') String sortBy,
  );

  @GET('/posts/reports/posts-with-reports/{fanHubId}')
  Future<ApiResponse<List<PostWithReport>>> getPostsWithReports(
    @Path('fanHubId') int fanHubId,
    @Query('pageNo') int pageNo,
    @Query('pageSize') int pageSize,
    @Query('sortBy') String sortBy,
  );

  @POST('/posts/validate/{postId}')
  Future<ApiResponse> aiRevalidate(@Path('postId') int postId);

  @PATCH('/posts/review')
  Future<ApiResponse> reviewPost(
    @Query('postId') int postId,
    @Query('status') PostStatus status,
  );

  @PATCH('/posts/review/bulk')
  Future<ApiResponse> reviewPostBulk(
    @Query('postIds') List<int> postIds,
    @Query('status') PostStatus status,
  );

  @PATCH('/posts/reports/resolve')
  Future<ApiResponse> resolveReport(
    @Query('reportId') int reportId,
    @Query('resolveMessage') String resolveMessage,
  );

  @PATCH('/posts/reports/resolve')
  Future<ApiResponse> resolveReportBulk(
    @Query('reportIds') List<int> reportIds,
    @Query('resolveMessage') String resolveMessage,
  );
}

// ModerationRepository
// - /posts/fan-hub/{fanHubId}/pending
// - /posts/fan-hub/{fanHubId}/all
// - /posts/fan-hub/subdomain/{subdomain}/pending
// - /posts/fan-hub/subdomain/{subdomain}/all
// - /posts/reports/posts/{fanHubId}
// - /posts/validate
