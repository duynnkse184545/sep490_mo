import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';
import 'package:sep490_mo/core/widgets/app_video_player.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';
import 'package:sep490_mo/features/post/presentation/controllers/bookmark_controller.dart';
import 'package:sep490_mo/features/post/presentation/controllers/feed_controller.dart';
import 'package:sep490_mo/features/post/presentation/controllers/post_ai_controller.dart';
import 'package:sep490_mo/features/post/presentation/states/bookmark_state.dart';
import 'package:sep490_mo/features/post/presentation/states/post_ai_state.dart';
import 'package:sep490_mo/features/post/presentation/widgets/post_comments_widget.dart';

class PostCard extends HookConsumerWidget {
  final Post post;
  final Future<void> Function()? onBookmarkTap;

  const PostCard({
    super.key, 
    required this.post,
    this.onBookmarkTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;

    // Source of truth for bookmark status
    final bookmarkedPosts = ref.watch(bookmarkControllerProvider);
    final isBookmarked = bookmarkedPosts.maybeWhen(
      data: (state) => state.maybeWhen(
        ready: (posts) => posts.any((p) => p.postId == post.postId),
        loadingMore: (posts) => posts.any((p) => p.postId == post.postId),
        orElse: () => false,
      ),
      orElse: () => false,
    );

    // Local state for instant like feedback
    final isLiked = useState(post.isLikedByCurrentUser);
    final likeCount = useState(post.likeCount);

    // Sync local state with post object
    useEffect(() {
      isLiked.value = post.isLikedByCurrentUser;
      likeCount.value = post.likeCount;
      return null;
    }, [post.isLikedByCurrentUser, post.likeCount]);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.backgroundEnd,
        border: Border(
          top: BorderSide(color: AppColors.border, width: 2),
          bottom: BorderSide(color: AppColors.border, width: 2),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Author row
          // ... (rest of the card is the same)
          Row(
            children: [
              CircleAvatar(
                radius: 16,
                backgroundImage: post.authorAvatarUrl != null
                    ? NetworkImage(post.authorAvatarUrl!)
                    : const AssetImage(
                            'assets/profile-pic-undefined.jpg',
                          )
                          as ImageProvider,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "h/${post.fanHubName}",
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      _formatTimestamp(post.createdAt),
                      style: const TextStyle(
                        color: Color(0xFF878A8C),
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ),
              if (post.isPinned)
                const Icon(Icons.push_pin, size: 16, color: Color(0xFFE65100)),
              // Actions Menu
              PopupMenuButton<String>(
                onSelected: (value) => _handleMenuAction(context, ref, value),
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 'summarize',
                    child: Row(
                      children: [
                        Icon(Icons.auto_awesome, size: 20),
                        SizedBox(width: 12),
                        Text('Summarize (AI)'),
                      ],
                    ),
                  ),
                  const PopupMenuItem(
                    value: 'translate',
                    child: Row(
                      children: [
                        Icon(Icons.translate, size: 20),
                        SizedBox(width: 12),
                        Text('Translate (AI)'),
                      ],
                    ),
                  ),
                  const PopupMenuItem(
                    value: 'report',
                    child: Row(
                      children: [
                        Icon(
                          Icons.report_problem_outlined,
                          size: 20,
                          color: Colors.red,
                        ),
                        SizedBox(width: 12),
                        Text('Report', style: TextStyle(color: Colors.red)),
                      ],
                    ),
                  ),
                ],
                icon: const Icon(Icons.more_vert, size: 20),
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
            ],
          ),

          const SizedBox(height: 12),
          _buildPostTypeBadge(context),

          if (post.title != null && post.title!.isNotEmpty) ...[
            const SizedBox(height: 8),
            Text(
              post.title!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Color(0xFF323232),
              ),
            ),
          ],

          const SizedBox(height: 8),
          Text(
            post.content,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xFF323232),
              height: 1.5,
            ),
          ),

          if (post.postType == PostType.poll) _buildPoll(context, ref),

          if (post.mediaUrls.isNotEmpty) _buildMedia(context),

          if (post.hashtags.isNotEmpty) _buildHashtags(colorScheme),

          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  _buildRetroLikeButton(
                    isLiked: isLiked.value,
                    likeCount: likeCount.value,
                    onToggle: () {
                      if (isLiked.value) {
                        isLiked.value = false;
                        likeCount.value--;
                        ref.read(feedControllerProvider.notifier).unlike(post.postId);
                      } else {
                        isLiked.value = true;
                        likeCount.value++;
                        ref.read(feedControllerProvider.notifier).like(post.postId);
                      }
                    },
                  ),
                  const SizedBox(width: 8),
                  _buildRetroCountButton(
                    icon: Icons.chat_bubble_outline,
                    count: 0, // Replace with post.commentCount
                    onPressed: () => _showComments(context),
                  ),
                ],
              ),
              Row(
                children: [
                  _buildRetroActionButton(
                    icon: isBookmarked ? Icons.bookmark : Icons.bookmark_border,
                    onPressed: () {
                      onBookmarkTap != null
                          ? onBookmarkTap!()
                          : _defaultBookmarkAction(ref, isBookmarked);
                    },
                  ),
                  const SizedBox(width: 8),
                  _buildRetroActionButton(
                    icon: Icons.share_outlined,
                    onPressed: () => ref.read(feedControllerProvider.notifier).share(post.postId),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _defaultBookmarkAction(WidgetRef ref, bool isCurrentlyBookmarked) {
    if (isCurrentlyBookmarked) {
      ref.read(feedControllerProvider.notifier).unbookmark(post.postId);
    } else {
      ref.read(feedControllerProvider.notifier).bookmark(post.postId);
    }
  }
  
  Widget _buildRetroCountButton({
    required IconData icon,
    required int count,
    required VoidCallback onPressed,
    Color? activeColor,
    Color? activeIconColor,
    bool isActive = false,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.transparent,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 36,
              height: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: isActive
                    ? (activeColor ?? Colors.transparent)
                    : Colors.transparent,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(24),
                  bottomLeft: Radius.circular(24),
                ),
              ),
              child: Icon(
                icon,
                size: 16,
                color: isActive
                    ? (activeIconColor ?? Colors.white)
                    : Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                count.toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRetroLikeButton({
    required bool isLiked,
    required int likeCount,
    required VoidCallback onToggle,
  }) {
    return _buildRetroCountButton(
      icon: isLiked ? Icons.favorite : Icons.favorite_border,
      count: likeCount,
      isActive: isLiked,
      activeColor: Colors.transparent,
      // No background glow
      activeIconColor: Colors.red,
      // Icon glows red
      onPressed: onToggle,
    );
  }

  Widget _buildRetroActionButton({
    required IconData icon,
    String? label,
    required VoidCallback onPressed,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 32,
        padding: EdgeInsets.symmetric(horizontal: label != null ? 12 : 8),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 16),
            if (label != null) ...[
              const SizedBox(width: 6),
              Text(
                label,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
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
                  ref
                      .read(feedControllerProvider.notifier)
                      .vote(post.postId, option.id);
                } else if (isSelected) {
                  ref.read(feedControllerProvider.notifier).unvote(post.postId);
                }
              },
              borderRadius: BorderRadius.circular(8),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 12,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: isSelected
                        ? Theme.of(context).primaryColor
                        : Colors.grey[300]!,
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
                          color: Theme.of(
                            context,
                          ).primaryColor.withValues(alpha: 0.1),
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
                        errorBuilder: (context, error, stackTrace) =>
                            const Center(
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
            .map(
              (tag) => Text(
                '#$tag',
                style: TextStyle(
                  fontSize: 12,
                  color: colorScheme.primary,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
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
            Expanded(child: PostCommentsWidget(postId: post.postId)),
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
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
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
                  const SnackBar(content: Text('Post reported successfully')),
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

class _AIDialog extends ConsumerWidget {
  final int postId;
  final String type;

  const _AIDialog({required this.postId, required this.type});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final aiState = ref.watch(postAIControllerProvider(postId: postId));
    final controller = ref.read(
      postAIControllerProvider(postId: postId).notifier,
    );

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
        error: (message) =>
            Text('Error: $message', style: const TextStyle(color: Colors.red)),
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
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Close'),
        ),
      ],
    );
  }
}
