import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';

// moderation_post_card.dart

class ModerationPostCard extends StatefulWidget {
  final PostModeration post;
  final bool isSelected;
  final VoidCallback onToggleSelect;
  final VoidCallback onApprove;
  final VoidCallback onReject;
  final VoidCallback onRevalidate;

  const ModerationPostCard({
    super.key,
    required this.post,
    this.isSelected = false,
    required this.onToggleSelect,
    required this.onApprove,
    required this.onReject,
    required this.onRevalidate,
  });

  @override
  State<ModerationPostCard> createState() => _ModerationPostCardState();
}

class _ModerationPostCardState extends State<ModerationPostCard> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12, left: 4, right: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: widget.isSelected
              ? Theme.of(context).colorScheme.primary
              : AppColors.border,
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: widget.isSelected
                ? Theme.of(context).colorScheme.primary.withValues(alpha: 0.5)
                : AppColors.border,
            offset: const Offset(6, 6),
            blurRadius: 0,
          ),
        ],
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () => setState(() => _isExpanded = !_isExpanded),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ── Collapsed header row ──
              Row(
                children: [
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: Checkbox(
                      value: widget.isSelected,
                      onChanged: (_) => widget.onToggleSelect(),
                      activeColor: Theme.of(context).colorScheme.primary,
                      side: const BorderSide(
                        color: AppColors.border,
                        width: 1.5,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  CircleAvatar(
                    radius: 16,
                    backgroundColor: Theme.of(
                      context,
                    ).colorScheme.primary.withValues(alpha: 0.2),
                    child: Text(
                      widget.post.authorDisplayName.isNotEmpty
                          ? widget.post.authorDisplayName[0].toUpperCase()
                          : '?',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.post.authorDisplayName,
                          style: const TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 14,
                            color: Color(0xFF323232),
                          ),
                        ),
                        if (!_isExpanded)
                          Text(
                            widget.post.title ?? widget.post.content,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[600],
                            ),
                          ),
                      ],
                    ),
                  ),
                  _buildStatusBadge(context),
                  const SizedBox(width: 4),
                  Icon(
                    _isExpanded ? Icons.expand_less : Icons.expand_more,
                    size: 20,
                    color: AppColors.border,
                  ),
                ],
              ),

              // ── Expanded body ──
              if (_isExpanded) ...[
                const SizedBox(height: 12),
                if (widget.post.title != null)
                  Text(
                    widget.post.title!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xFF323232),
                    ),
                  ),
                const SizedBox(height: 4),
                Text(
                  widget.post.content,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF323232),
                  ),
                ),
                // ... rest of media and meta ...
                if (widget.post.media.isNotEmpty) ...[
                  const SizedBox(height: 12),
                  _buildMediaList(),
                ],
                const SizedBox(height: 12),
                _buildAiStatusRow(),
                const SizedBox(height: 8),
                _buildMetaRow(),
                const Divider(height: 24, color: Colors.black12),
                _buildActionButtons(context),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMediaList() {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.post.media.length,
        itemBuilder: (context, index) {
          final media = widget.post.media[index];
          final isImage = _isImage(media.mediaUrl);
          return Container(
            margin: const EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.border, width: 1.5),
              borderRadius: BorderRadius.circular(8),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: isImage
                  ? Image.network(
                      media.mediaUrl,
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    )
                  : Container(
                      width: 80,
                      height: 80,
                      color: Colors.black,
                      child: const Icon(
                        Icons.play_circle_outline,
                        color: Colors.white,
                      ),
                    ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildAiStatusRow() {
    return Row(
      children: [
        Icon(_getAiValidationIcon(), size: 16, color: _getAiValidationColor()),
        const SizedBox(width: 6),
        Text(
          _getAiValidationText(),
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: _getAiValidationColor(),
          ),
        ),
      ],
    );
  }

  Widget _buildMetaRow() {
    return Row(
      children: [
        const Icon(Icons.access_time, size: 14, color: Colors.grey),
        const SizedBox(width: 4),
        Text(
          DateFormat('MMM dd, HH:mm').format(widget.post.createdAt),
          style: const TextStyle(fontSize: 11, color: Colors.grey),
        ),
        const Spacer(),
        if (widget.post.isPinned)
          const Icon(Icons.push_pin, size: 14, color: Colors.orange),
      ],
    );
  }

  Widget _buildActionButtons(BuildContext context) {
    return Row(
      children: [
        _buildSmallRetroButton(
          label: 'REVALIDATE',
          icon: Icons.refresh,
          color: Colors.grey[200]!,
          onTap: widget.onRevalidate,
        ),
        const SizedBox(width: 8),
        _buildSmallRetroButton(
          label: 'REJECT',
          icon: Icons.close,
          color: Colors.red[50]!,
          textColor: Colors.red,
          onTap: widget.onReject,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: _buildSmallRetroButton(
            label: 'APPROVE',
            icon: Icons.check,
            color: Theme.of(context).colorScheme.primary,
            textColor: Colors.white,
            onTap: widget.onApprove,
          ),
        ),
      ],
    );
  }

  Widget _buildSmallRetroButton({
    required String label,
    required IconData icon,
    required Color color,
    Color textColor = Colors.black87,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: AppColors.border, width: 1.5),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 14, color: textColor),
            const SizedBox(width: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w900,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusBadge(BuildContext context) {
    final color = widget.post.status == PostStatus.pending
        ? Colors.orange
        : widget.post.status == PostStatus.approved
        ? Colors.green
        : Colors.red;

    final label = widget.post.status.name;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withAlpha(51),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 10,
          color: color,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  IconData _getAiValidationIcon() {
    switch (widget.post.aiValidationStatus) {
      case AiStatus.aiSafe:
        return Icons.verified;
      case AiStatus.aiUnsafe:
        return Icons.warning;
      default:
        return Icons.hourglass_empty;
    }
  }

  Color _getAiValidationColor() {
    switch (widget.post.aiValidationStatus) {
      case AiStatus.aiSafe:
        return Colors.green;
      case AiStatus.aiUnsafe:
        return Colors.red;
      default:
        return Colors.orange;
    }
  }

  String _getAiValidationText() {
    switch (widget.post.aiValidationStatus) {
      case AiStatus.aiSafe:
        return 'AI Safe';
      case AiStatus.aiUnsafe:
        return 'AI Unsafe';
      default:
        return 'Pending AI Validation';
    }
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
}
