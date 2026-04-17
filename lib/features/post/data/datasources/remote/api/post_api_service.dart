import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';

part 'post_api_service.g.dart';

@RestApi()
abstract class PostApiService {
  factory PostApiService(Dio dio) = _PostApiService;

  @GET('/posts/bookmark')
  Future<ApiResponse<List<Post>>> getBookmarked(
    @Query('pageNo') int pageNo,
    @Query('pageSize') int pageSize,
    @Query('sortBy') String sortBy,
  );

  @GET('/posts/summarize')
  Future<ApiResponse<SummaryResponse>> getSummary(@Query('postId') int postId);

  @GET('/posts/translate')
  Future<ApiResponse<TranslationResponse>> getTranslation(
    @Query('postId') int postId,
  );

  @POST('/posts')
  Future<ApiResponse> createPost(@Body() CreatePostRequest post);

  @POST('/posts/bookmark')
  Future<ApiResponse> bookmark(@Query('postId') int postId);

  @POST('/posts/like')
  Future<ApiResponse> like(@Query('postId') int postId);

  @POST('/posts/unlike')
  Future<ApiResponse> unlike(@Query('postId') int postId);

  @POST('/posts/vote')
  Future<ApiResponse> vote(
    @Query('postId') int postId,
    @Query('optionId') int optionId,
  );

  @POST('/posts/unvote')
  Future<ApiResponse> unvote(@Query('postId') int postId);

  @POST('/posts/poll')
  Future<ApiResponse> createPoll(@Body() PollRequest poll);

  @POST('/posts/share')
  Future<ApiResponse> share(@Query('postId') int postId);

  @POST('/posts/report')
  Future<ApiResponse> report(@Body() ReportRequest report);
}
