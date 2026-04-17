import 'package:sep490_mo/features/post/data/models/comment_models.dart';

abstract class CommentRemoteDataSource {
  Future<List<Comment>> getPostComments(int postId);
  Future<List<Comment>> getReplies(int parentCommentId);
  Future<void> createComment(CommentRequest comment);
  Future<void> likeComment(int commentId);
  Future<void> unlikeComment(int commentId);
  Future<void> giftComment(int commentId);
  Future<void> editComment(int commentId, String content);
  Future<void> deleteComment(int commentId);
}
