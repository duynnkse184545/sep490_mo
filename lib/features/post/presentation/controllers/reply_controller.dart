import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/features/post/data/providers/comment_providers.dart';
import 'package:sep490_mo/features/post/presentation/states/comment_state.dart';

part 'reply_controller.g.dart';

@riverpod
class ReplyController extends _$ReplyController {
  @override
  Future<CommentState> build({required int parentCommentId}) async {
    return _fetchReplies();
  }

  Future<CommentState> _fetchReplies() async {
    final result = await ref.read(commentRepositoryProvider).getReplies(parentCommentId).run();

    return result.fold(
      (failure) => throw failure,
      (replies) => replies.isEmpty 
          ? const CommentState.empty() 
          : CommentState.ready(replies),
    );
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
    await future;
  }
}
