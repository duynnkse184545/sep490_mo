import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:sep490_mo/core/widgets/app_video_player.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';
import 'package:sep490_mo/features/post/presentation/controllers/feed_controller.dart';
import 'package:sep490_mo/features/post/presentation/controllers/post_ai_controller.dart';
import 'package:sep490_mo/features/post/presentation/states/post_ai_state.dart';
import 'package:sep490_mo/features/post/presentation/widgets/post_comments_widget.dart';

class PostCard extends ConsumerWidget {
  final Post post;

  const PostCard({super.key, required this.post});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final feedController = ref.read(feedControllerProvider.notifier);

    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(color: colorScheme.outline),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Author row
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: colorScheme.primary.withValues(alpha: 0.2),
                  child: Text(
                    post.authorDisplayName.isNotEmpty
                        ? post.authorDisplayName[0].toUpperCase()
                        : '?',
                    style: TextStyle(
                      color: colorScheme.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        post.authorDisplayName,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: colorScheme.onSurface,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        '@${post.authorUsername} · ${post.fanHubName}',
                        style: TextStyle(
                          color: colorScheme.onSurfaceVariant,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                // Actions Menu
                PopupMenuButton<String>(
                  onSelected: (value) => _handleMenuAction(context, ref, value),
                  itemBuilder: (context) => [
                    const PopupMenuItem(value: 'summarize', child: Text('Summarize (AI)')),
                    const PopupMenuItem(value: 'translate', child: Text('Translate (AI)')),
                    const PopupMenuItem(value: 'report', child: Text('Report')),
                  ],
                  icon: const Icon(Icons.more_vert),
                ),
              ],
            ),

            const SizedBox(height: 8),
            _buildPostTypeBadge(context),

            if (post.title != null && post.title!.isNotEmpty) ...[
              const SizedBox(height: 8),
              Text(
                post.title!,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: colorScheme.onSurface,
                ),
              ),
            ],

            const SizedBox(height: 8),
            Text(
              post.content,
              style: TextStyle(
                fontSize: 14,
                color: colorScheme.onSurface,
                height: 1.5,
              ),
            ),

            if (post.postType == PostType.poll) _buildPoll(context, ref),

            if (post.mediaUrls.isNotEmpty) _buildMedia(context),

            if (post.hashtags.isNotEmpty) _buildHashtags(colorScheme),

            const SizedBox(height: 12),
            Row(
              children: [
                _IconButtonWithCount(
                  icon: post.isLikedByCurrentUser ? Icons.favorite : Icons.favorite_border,
                  count: post.likeCount,
                  color: post.isLikedByCurrentUser ? colorScheme.error : colorScheme.onSurfaceVariant,
                  onPressed: () {
                    if (post.isLikedByCurrentUser) {
                      feedController.unlike(post.postId);
                    } else {
                      feedController.like(post.postId);
                    }
                  },
                ),
                const SizedBox(width: 16),
                IconButton(
                  onPressed: () => _showComments(context),
                  icon: Icon(
                    Icons.chat_bubble_outline,
                    color: colorScheme.onSurfaceVariant,
                    size: 20,
                  ),
                ),
                IconButton(
                  onPressed: () => feedController.bookmark(post.postId),
                  icon: Icon(
                    Icons.bookmark_border, // Ideally use isBookmarked field if available
                    color: colorScheme.onSurfaceVariant,
                    size: 20,
                  ),
                ),
                IconButton(
                  onPressed: () => feedController.share(post.postId),
                  icon: Icon(
                    Icons.share_outlined,
                    color: colorScheme.onSurfaceVariant,
                    size: 20,
                  ),
                ),
                const Spacer(),
                Text(
                  _formatTimestamp(post.createdAt),
                  style: TextStyle(
                    fontSize: 11,
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPostTypeBadge(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: colorScheme.primary.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        post.postType.name.toUpperCase(),
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w600,
          color: colorScheme.primary,
        ),
      ),
    );
  }

  Widget _buildPoll(BuildContext context, WidgetRef ref) {
    if (post.voteOptions == null) return const SizedBox.shrink();
    final totalVotes = post.totalVotes ?? 0;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        children: post.voteOptions!.map((option) {
          final voteCount = post.voteCounts?[option.id.toString()] ?? 0;
          final percentage = totalVotes == 0 ? 0.0 : voteCount / totalVotes;
          final isSelected = post.userVotedOptionId == option.id;

          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: InkWell(
              onTap: () {
                if (post.userVotedOptionId == null) {
                  ref.read(feedControllerProvider.notifier).vote(post.postId, option.id);
                } else if (isSelected) {
                  ref.read(feedControllerProvider.notifier).unvote(post.postId);
                }
              },
              borderRadius: BorderRadius.circular(8),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: isSelected ? Theme.of(context).primaryColor : Colors.grey[300]!,
                    width: isSelected ? 2 : 1,
                  ),
                ),
                child: Stack(
                  children: [
                    FractionallySizedBox(
                      widthFactor: percentage,
                      child: Container(
                        height: 24,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(child: Text(option.optionText)),
                        Text('${(percentage * 100).toStringAsFixed(1)}%'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildMedia(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: SizedBox(
        height: 200,
        child: PageView.builder(
          itemCount: post.mediaUrls.length,
          itemBuilder: (context, index) {
            final url = post.mediaUrls[index];
            final isImage = _isImage(url);

            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: colorScheme.surfaceContainer,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: isImage
                    ? Image.network(
                        url,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        errorBuilder: (context, error, stackTrace) => const Center(
                          child: Icon(Icons.broken_image, size: 48),
                        ),
                      )
                    : AppVideoPlayer(url: url),
              ),
            );
          },
        ),
      ),
    );
  }

  bool _isImage(String url) {
    final lowercaseUrl = url.toLowerCase();
    return lowercaseUrl.endsWith('.jpg') ||
        lowercaseUrl.endsWith('.jpeg') ||
        lowercaseUrl.endsWith('.png') ||
        lowercaseUrl.endsWith('.gif') ||
        lowercaseUrl.endsWith('.webp') ||
        lowercaseUrl.endsWith('.bmp');
  }

  Widget _buildHashtags(ColorScheme colorScheme) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Wrap(
        spacing: 6,
        children: post.hashtags
            .map((tag) => Text(
                  '#$tag',
                  style: TextStyle(
                    fontSize: 12,
                    color: colorScheme.primary,
                    fontWeight: FontWeight.w500,
                  ),
                ))
            .toList(),
      ),
    );
  }

  void _showComments(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.7,
        minChildSize: 0.5,
        maxChildSize: 0.95,
        expand: false,
        builder: (context, scrollController) => Column(
          children: [
            const SizedBox(height: 8),
            Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Comments',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 8),
            const Divider(height: 1),
            Expanded(
              child: PostCommentsWidget(postId: post.postId),
            ),
          ],
        ),
      ),
    );
  }

  void _handleMenuAction(BuildContext context, WidgetRef ref, String action) {
    switch (action) {
      case 'summarize':
        _showAISummary(context, ref);
        break;
      case 'translate':
        _showAITranslation(context, ref);
        break;
      case 'report':
        _showReportDialog(context, ref);
        break;
    }
  }

  void _showAISummary(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) => _AIDialog(postId: post.postId, type: 'summary'),
    );
  }

  void _showAITranslation(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) => _AIDialog(postId: post.postId, type: 'translation'),
    );
  }

  void _showReportDialog(BuildContext context, WidgetRef ref) {
    final reasonController = TextEditingController();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Report Post'),
        content: TextField(
          controller: reasonController,
          decoration: const InputDecoration(
            hintText: 'Reason for reporting...',
            border: OutlineInputBorder(),
          ),
          maxLines: 3,
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
          ElevatedButton(
            onPressed: () async {
              final reason = reasonController.text.trim();
              if (reason.isEmpty) return;

              await ref
                  .read(feedControllerProvider.notifier)
                  .report(post.postId, reason);

              if (context.mounted) {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Post reported successfully'),
                  ),
                );
              }
            },
            child: const Text('Report'),
          ),
        ],
      ),
    );
  }

  String _formatTimestamp(DateTime dateTime) {
    final now = DateTime.now();
    final diff = now.difference(dateTime);
    if (diff.inMinutes < 1) return 'Just now';
    if (diff.inMinutes < 60) return '${diff.inMinutes}m ago';
    if (diff.inHours < 24) return '${diff.inHours}h ago';
    if (diff.inDays < 7) return '${diff.inDays}d ago';
    return DateFormat('MMM d').format(dateTime);
  }
}

class _IconButtonWithCount extends StatelessWidget {
  final IconData icon;
  final int count;
  final Color color;
  final VoidCallback onPressed;

  const _IconButtonWithCount({
    required this.icon,
    required this.count,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(icon, color: color, size: 20),
          visualDensity: VisualDensity.compact,
        ),
        Text(
          count.toString(),
          style: TextStyle(fontSize: 12, color: Theme.of(context).colorScheme.onSurfaceVariant),
        ),
      ],
    );
  }
}

class _AIDialog extends ConsumerWidget {
  final int postId;
  final String type;

  const _AIDialog({required this.postId, required this.type});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final aiState = ref.watch(postAIControllerProvider(postId: postId));
    final controller = ref.read(postAIControllerProvider(postId: postId).notifier);

    // Initial trigger
    WidgetsBinding.instance.addPostFrameCallback((_) {
      aiState.maybeWhen(
        idle: () {
          if (type == 'summary') {
            controller.summarize();
          } else {
            controller.translate();
          }
        },
        orElse: () {},
      );
    });

    return AlertDialog(
      title: Text(type == 'summary' ? 'AI Summary' : 'AI Translation'),
      content: aiState.when(
        idle: () => const SizedBox.shrink(),
        loading: () => const SizedBox(
          height: 100,
          child: Center(child: CircularProgressIndicator()),
        ),
        error: (message) => Text('Error: $message', style: const TextStyle(color: Colors.red)),
        summarized: (summary) => Text(summary.summarizeResult),
        translated: (translation) => Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              translation.translatedTitle,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(translation.translatedContent),
          ],
        ),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: const Text('Close')),
      ],
    );
  }
}
