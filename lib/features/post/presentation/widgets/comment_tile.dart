import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:sep490_mo/features/post/data/models/comment_models.dart';
import 'package:sep490_mo/features/post/presentation/controllers/comment_controller.dart';
import 'package:sep490_mo/features/post/presentation/controllers/reply_controller.dart';
import 'package:sep490_mo/features/post/presentation/states/comment_state.dart';

class CommentTile extends HookConsumerWidget {
  final int postId;
  final Comment comment;
  final VoidCallback? onReply;
  final bool isReply;

  const CommentTile({
    super.key,
    required this.postId,
    required this.comment,
    this.onReply,
    this.isReply = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final controller = ref.read(commentControllerProvider(postId: postId).notifier);
    final isExpanded = useState(false);

    return Padding(
      padding: EdgeInsets.only(
        top: 8.0,
        bottom: 8.0,
        left: isReply ? 24.0 : 0.0, // Indent replies
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: isReply ? 12 : 16,
                backgroundImage: comment.avatarUrl != null ? NetworkImage(comment.avatarUrl!) : null,
                child: comment.avatarUrl == null
                    ? Text(
                        comment.displayName[0].toUpperCase(),
                        style: TextStyle(fontSize: isReply ? 10 : 14),
                      )
                    : null,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          comment.displayName,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: isReply ? 13 : 14,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          _formatDate(comment.createdAt),
                          style: theme.textTheme.labelSmall?.copyWith(color: Colors.grey),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      comment.content,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontSize: isReply ? 13 : 14,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            if (comment.isLikedByCurrentUser) {
                              controller.unlikeComment(comment.commentId);
                            } else {
                              controller.likeComment(comment.commentId);
                            }
                          },
                          child: Row(
                            children: [
                              Icon(
                                comment.isLikedByCurrentUser ? Icons.favorite : Icons.favorite_border,
                                size: 16,
                                color: comment.isLikedByCurrentUser ? Colors.red : Colors.grey,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                comment.likeCount.toString(),
                                style: theme.textTheme.labelSmall,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 24),
                        InkWell(
                          onTap: onReply,
                          child: Text(
                            'Reply',
                            style: theme.textTheme.labelSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[700],
                            ),
                          ),
                        ),
                        const Spacer(),
                        if (comment.giftCount > 0)
                          Row(
                            children: [
                              const Icon(Icons.card_giftcard, size: 16, color: Colors.amber),
                              const SizedBox(width: 4),
                              Text(comment.giftCount.toString(), style: theme.textTheme.labelSmall),
                            ],
                          ),
                      ],
                    ),
                    // "View Replies" button
                    if (comment.hasChildren && !isReply) ...[
                      const SizedBox(height: 8),
                      InkWell(
                        onTap: () => isExpanded.value = !isExpanded.value,
                        child: Row(
                          children: [
                            Container(
                              width: 24,
                              height: 1,
                              color: Colors.grey[300],
                            ),
                            const SizedBox(width: 8),
                            Text(
                              isExpanded.value ? 'Hide replies' : 'View replies',
                              style: theme.textTheme.labelSmall?.copyWith(
                                color: theme.primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
          // Nested replies
          if (isExpanded.value && comment.hasChildren)
            _ReplyList(
              parentCommentId: comment.commentId,
              postId: postId,
              onReplyToNested: onReply,
            ),
        ],
      ),
    );
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inDays == 0) {
      if (difference.inHours == 0) {
        return '${difference.inMinutes}m ago';
      }
      return '${difference.inHours}h ago';
    } else if (difference.inDays < 7) {
      return '${difference.inDays}d ago';
    } else {
      return DateFormat('MMM d').format(date);
    }
  }
}

class _ReplyList extends ConsumerWidget {
  final int parentCommentId;
  final int postId;
  final VoidCallback? onReplyToNested;

  const _ReplyList({
    required this.parentCommentId,
    required this.postId,
    this.onReplyToNested,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final replyAsync = ref.watch(replyControllerProvider(parentCommentId: parentCommentId));

    return replyAsync.when(
      data: (state) => state.when(
        ready: (replies) => Column(
          children: replies
              .map((reply) => CommentTile(
                    postId: postId,
                    comment: reply,
                    isReply: true,
                    onReply: onReplyToNested,
                  ))
              .toList(),
        ),
        empty: () => const SizedBox.shrink(),
      ),
      loading: () => const Padding(
        padding: EdgeInsets.only(left: 48.0, top: 8.0),
        child: SizedBox(
          width: 16,
          height: 16,
          child: CircularProgressIndicator(strokeWidth: 2),
        ),
      ),
      error: (error, _) => Padding(
        padding: const EdgeInsets.only(left: 48.0, top: 8.0),
        child: Text(
          'Error loading replies',
          style: TextStyle(color: Colors.red, fontSize: 12),
        ),
      ),
    );
  }
}
