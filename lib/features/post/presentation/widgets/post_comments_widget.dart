import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/features/post/presentation/controllers/comment_controller.dart';
import 'package:sep490_mo/features/post/presentation/states/comment_state.dart';
import 'package:sep490_mo/features/post/presentation/widgets/comment_tile.dart';

class PostCommentsWidget extends HookConsumerWidget {
  final int postId;

  const PostCommentsWidget({super.key, required this.postId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final commentAsync = ref.watch(commentControllerProvider(postId: postId));
    final controller = ref.read(commentControllerProvider(postId: postId).notifier);
    final textController = useTextEditingController();
    final replyToCommentId = useState<int?>(null);
    final replyToUsername = useState<String?>(null);

    return Column(
      children: [
        Expanded(
          child: commentAsync.when(
            data: (commentState) => commentState.when(
              ready: (comments) => ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: comments.length,
                itemBuilder: (context, index) {
                  final comment = comments[index];
                  return CommentTile(
                    postId: postId,
                    comment: comment,
                    onReply: () {
                      replyToCommentId.value = comment.commentId;
                      replyToUsername.value = comment.displayName;
                    },
                  );
                },
              ),
              empty: () => const Center(
                child: Text('No comments yet. Be the first to comment!'),
              ),
            ),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, _) => Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Error: $error', textAlign: TextAlign.center),
              ),
            ),
          ),
        ),
        const Divider(height: 1),
        if (replyToUsername.value != null)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            color: Colors.grey[100],
            child: Row(
              children: [
                Text(
                  'Replying to ${replyToUsername.value}',
                  style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    replyToCommentId.value = null;
                    replyToUsername.value = null;
                  },
                  child: const Icon(Icons.close, size: 16),
                ),
              ],
            ),
          ),
        Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom + 12,
            left: 16,
            right: 16,
            top: 12,
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: textController,
                  decoration: InputDecoration(
                    hintText: 'Add a comment...',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              IconButton(
                onPressed: () async {
                  final content = textController.text.trim();
                  if (content.isNotEmpty) {
                    await controller.createComment(
                      content,
                      parentCommentId: replyToCommentId.value,
                    );
                    
                    textController.clear();
                    replyToCommentId.value = null;
                    replyToUsername.value = null;
                    if (context.mounted) {
                      FocusScope.of(context).unfocus();
                    }
                  }
                },
                icon: const Icon(Icons.send),
                color: Theme.of(context).primaryColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
