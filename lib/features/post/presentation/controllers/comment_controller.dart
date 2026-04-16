import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/features/post/data/models/comment_models.dart';
import 'package:sep490_mo/features/post/data/providers/comment_providers.dart';
import 'package:sep490_mo/features/post/presentation/states/comment_state.dart';

part 'comment_controller.g.dart';

@riverpod
class CommentController extends _$CommentController {
  @override
  Future<CommentState> build({required int postId}) async {
    return _fetchComments();
  }

  Future<CommentState> _fetchComments() async {
    final result = await ref.read(commentRepositoryProvider).getPostComments(postId).run();

    return result.fold(
      (failure) => throw failure,
      (comments) => comments.isEmpty 
          ? const CommentState.empty() 
          : CommentState.ready(comments),
    );
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
    await future;
  }

  Future<void> createComment(String content, {int? parentCommentId}) async {
    final request = CommentRequest(
      postId: postId,
      content: content,
      parentCommentId: parentCommentId,
    );

    final result = await ref.read(commentRepositoryProvider).createComment(request).run();

    result.fold(
      (failure) {
        // Could surface error via side effect
      },
      (_) {
        refresh();
      },
    );
  }

  Future<void> likeComment(int commentId) async {
    final result = await ref.read(commentRepositoryProvider).likeComment(commentId).run();

    result.fold(
      (failure) {},
      (_) {
        refresh();
      },
    );
  }

  Future<void> unlikeComment(int commentId) async {
    final result = await ref.read(commentRepositoryProvider).unlikeComment(commentId).run();

    result.fold(
      (failure) {},
      (_) {
        refresh();
      },
    );
  }

  Future<void> giftComment(int commentId) async {
    final result = await ref.read(commentRepositoryProvider).giftComment(commentId).run();

    result.fold(
      (failure) {},
      (_) {
        refresh();
      },
    );
  }

  Future<void> editComment(int commentId, String content) async {
    final result = await ref.read(commentRepositoryProvider).editComment(commentId, content).run();

    result.fold(
      (failure) {},
      (_) {
        refresh();
      },
    );
  }

  Future<void> deleteComment(int commentId) async {
    final result = await ref.read(commentRepositoryProvider).deleteComment(commentId).run();

    result.fold(
      (failure) {},
      (_) {
        refresh();
      },
    );
  }
}
