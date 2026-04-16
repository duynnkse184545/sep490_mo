import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/post/data/models/comment_models.dart';

part 'comment_api_service.g.dart';

@RestApi()
abstract class CommentApiService {
  factory CommentApiService(Dio dio) = _CommentApiService;

  @GET('/posts/{postId}/comments')
  Future<ApiResponse<List<Comment>>> getPostComments(@Path('postId') int postId);

  @GET('/posts/comments/{parentCommentId}/replies')
  Future<ApiResponse<List<Comment>>> getReplies(@Path('parentCommentId') int parentCommentId);

  @POST('/posts/comment')
  Future<ApiResponse> createComment(@Body() CommentRequest comment);

  @POST('/posts/comment/like/{commentId}')
  Future<ApiResponse> likeComment(@Path('commentId') int commentId);

  @POST('/posts/comment/unlike/{commentId}')
  Future<ApiResponse> unlikeComment(@Path('commentId') int commentId);

  @POST('/posts/comment/gift/{commentId}')
  Future<ApiResponse> giftComment(@Path('commentId') int commentId);

  @PATCH('/posts/comment/{commentId}')
  Future<ApiResponse> editComment(@Path('commentId') int commentId, @Body() String content);

  @DELETE('/posts/comment/delete/{commentId}')
  Future<ApiResponse> deleteComment(@Path('commentId') int commentId);
}

// CommentRepository
// - /posts/comment
// - /posts/{postId}/comments
// - /posts/comment/like/{commentId}
// - /posts/comment/unlike/{commentId}
// - /posts/comment/gift/{commentId}
//