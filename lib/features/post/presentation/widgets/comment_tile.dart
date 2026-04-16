import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:sep490_mo/features/post/data/models/comment_models.dart';
import 'package:sep490_mo/features/post/presentation/controllers/comment_controller.dart';

class CommentTile extends ConsumerWidget {
  final int postId;
  final Comment comment;
  final VoidCallback? onReply;

  const CommentTile({
    super.key,
    required this.postId,
    required this.comment,
    this.onReply,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final controller = ref.read(commentControllerProvider(postId: postId).notifier);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 16,
            backgroundImage: comment.avatarUrl != null ? NetworkImage(comment.avatarUrl!) : null,
            child: comment.avatarUrl == null
                ? Text(comment.displayName[0].toUpperCase())
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
                      style: theme.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      _formatDate(comment.createdAt),
                      style: theme.textTheme.labelSmall?.copyWith(color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(comment.content, style: theme.textTheme.bodyMedium),
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
              ],
            ),
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
