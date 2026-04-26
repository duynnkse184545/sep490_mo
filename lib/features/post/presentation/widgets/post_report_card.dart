import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';
import 'package:sep490_mo/core/widgets/app_video_player.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';
import 'package:sep490_mo/features/post/data/models/report_models.dart';

class PostReportCard extends HookWidget {
  final PostWithReport post;
  final void Function(String message) onResolve;

  const PostReportCard({
    super.key,
    required this.post,
    required this.onResolve,
  });

  @override
  Widget build(BuildContext context) {
    final isExpanded = useState(false);
    final selectedReportIndex = useState(0);
    final resolveMessageController = useTextEditingController();
    final resolveMessageError = useState<String?>(null);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border, width: 2),
        boxShadow: const [
          BoxShadow(
            color: AppColors.border,
            offset: Offset(6, 6),
            blurRadius: 0,
          ),
        ],
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () => isExpanded.value = !isExpanded.value,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ── Header row (Mirror PostCard) ──
              Row(
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.2),
                    backgroundImage: post.authorAvatarUrl != null
                        ? NetworkImage(post.authorAvatarUrl!)
                        : const AssetImage('assets/profile-pic-undefined.jpg') as ImageProvider,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "h/${post.fanHubName}",
                          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
                        ),
                        Text(
                          _formatDate(post.postCreatedAt),
                          style: const TextStyle(color: Color(0xFF878A8C), fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                  _buildReportBadge(context),
                  const SizedBox(width: 4),
                  if (post.status == PostStatus.deleted)
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      margin: const EdgeInsets.only(right: 4),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Text(
                        'DELETED',
                        style: TextStyle(color: Colors.white, fontSize: 9, fontWeight: FontWeight.bold),
                      ),
                    ),
                  Icon(
                    isExpanded.value ? Icons.expand_less : Icons.expand_more,
                    size: 20,
                    color: AppColors.border,
                  ),
                ],
              ),

              const SizedBox(height: 12),

              // Title
              if (post.title != null && post.title!.isNotEmpty)
                Text(
                  post.title!,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color(0xFF323232)),
                ),

              // Content
              Text(
                post.content,
                maxLines: isExpanded.value ? null : 2,
                overflow: isExpanded.value ? TextOverflow.visible : TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 14, color: Color(0xFF323232), height: 1.5),
              ),

              // Media (Mirror PostCard)
              if (post.mediaUrls.isNotEmpty) _buildMedia(context),

              // ── Expanded body ──
              if (isExpanded.value) ...[
                const Divider(height: 32, color: Colors.black12),
                const Text(
                  'REPORTS',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 12, letterSpacing: 1),
                ),
                const SizedBox(height: 8),

                if (post.reports.isNotEmpty) ...[
                  if (post.reports.length > 1) _buildReportSelector(selectedReportIndex),
                  _buildReportDetails(post.reports[selectedReportIndex.value]),
                ] else
                  const Text('No reports available', style: TextStyle(fontSize: 12, color: Colors.grey)),

                const SizedBox(height: 16),
                if (post.status != PostStatus.deleted) ...[
                  _buildResolveInput(resolveMessageController, resolveMessageError),
                  const SizedBox(height: 12),
                  _buildRetroActionButton(
                    label: 'RESOLVE ALL REPORTS',
                    icon: Icons.check_circle_outline,
                    color: Colors.green,
                    onTap: () {
                      final message = resolveMessageController.text.trim();
                      if (message.isEmpty) {
                        resolveMessageError.value = 'Message is required';
                        return;
                      }
                      onResolve(message);
                    },
                  ),
                ] else
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'This post has been deleted and cannot be resolved.',
                        style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic, fontSize: 13),
                      ),
                    ),
                  ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMedia(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: SizedBox(
        height: 180,
        child: PageView.builder(
          itemCount: post.mediaUrls.length,
          itemBuilder: (context, index) {
            final url = post.mediaUrls[index];
            final isImage = _isImage(url);

            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.border, width: 1),
                color: Colors.black12,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: isImage
                    ? Image.network(url, fit: BoxFit.cover, width: double.infinity)
                    : AppVideoPlayer(url: url),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildReportSelector(ValueNotifier<int> selectedIndex) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            post.reports.length,
            (index) => Padding(
              padding: const EdgeInsets.only(right: 6),
              child: ChoiceChip(
                label: Text('#${index + 1}', style: const TextStyle(fontSize: 11)),
                selected: selectedIndex.value == index,
                onSelected: (_) => selectedIndex.value = index,
                visualDensity: VisualDensity.compact,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildReportDetails(Report report) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFF9F9F9),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.red.withValues(alpha: 0.3), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.flag, size: 16, color: Colors.red),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  report.reason,
                  style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: Color(0xFF323232)),
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            'Reported by @${report.reportedByUsername} on ${DateFormat('MMM dd').format(report.reportCreatedAt)}',
            style: const TextStyle(fontSize: 11, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildResolveInput(TextEditingController controller, ValueNotifier<String?> error) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        border: Border.all(color: AppColors.border, width: 1.5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        controller: controller,
        maxLines: 2,
        style: const TextStyle(fontSize: 13),
        decoration: InputDecoration(
          hintText: 'Enter resolution message...',
          contentPadding: const EdgeInsets.all(10),
          border: InputBorder.none,
          errorText: error.value,
        ),
      ),
    );
  }

  Widget _buildRetroActionButton({
    required String label,
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: AppColors.border, width: 2),
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(color: AppColors.border, offset: Offset(3, 3)),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: 18),
            const SizedBox(width: 8),
            Text(
              label,
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildReportBadge(BuildContext context) {
    final reportCount = post.reports.length;
    final color = reportCount > 2 ? Colors.red : Colors.orange;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: color, width: 1),
      ),
      child: Text(
        '$reportCount REPORTS',
        style: TextStyle(fontSize: 10, color: color, fontWeight: FontWeight.w900),
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

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final diff = now.difference(date);
    if (diff.inMinutes < 60) return '${diff.inMinutes}m ago';
    if (diff.inHours < 24) return '${diff.inHours}h ago';
    return DateFormat('MMM dd').format(date);
  }
}
