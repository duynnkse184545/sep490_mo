import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/post/data/models/comment_models.dart';

abstract class CommentRepository {
  TaskResult<List<Comment>> getPostComments(int postId);
  TaskResult<List<Comment>> getReplies(int parentCommentId);
  TaskVoid createComment(CommentRequest comment);
  TaskVoid likeComment(int commentId);
  TaskVoid unlikeComment(int commentId);
  TaskVoid giftComment(int commentId);
  TaskVoid editComment(int commentId, String content);
  TaskVoid deleteComment(int commentId);
}
