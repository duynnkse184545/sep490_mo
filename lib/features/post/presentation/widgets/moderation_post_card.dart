import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
    final colorScheme = Theme.of(context).colorScheme;

    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      elevation: widget.isSelected ? 2 : 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(
          color: widget.isSelected ? colorScheme.primary : colorScheme.outline,
          width: widget.isSelected ? 2 : 1,
        ),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () => setState(() => _isExpanded = !_isExpanded),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ── Collapsed header row (always visible) ──
              Row(
                children: [
                  Checkbox(
                    value: widget.isSelected,
                    onChanged: (_) => widget.onToggleSelect(),
                  ),
                  CircleAvatar(
                    radius: 16,
                    backgroundColor: colorScheme.primary.withAlpha(51),
                    child: Text(
                      widget.post.authorDisplayName.isNotEmpty
                          ? widget.post.authorDisplayName[0].toUpperCase()
                          : '?',
                      style: TextStyle(
                        color: colorScheme.primary,
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
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                        // Show a short preview of the content while collapsed
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
                        if (_isExpanded)
                          Text(
                            '@${widget.post.authorUsername}',
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
                    color: Colors.grey[600],
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
                    ),
                  ),
                if (widget.post.title != null) const SizedBox(height: 4),
                Text(
                  widget.post.content,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 14),
                ),

                if (widget.post.media.isNotEmpty) ...[
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 60,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.post.media.length,
                      itemBuilder: (context, index) {
                        final media = widget.post.media[index];
                        final isImage = _isImage(media.mediaUrl);

                        return Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: isImage
                                ? Image.network(
                                    media.mediaUrl,
                                    width: 60,
                                    height: 60,
                                    fit: BoxFit.cover,
                                    errorBuilder: (_, _, _) => Container(
                                      width: 60,
                                      height: 60,
                                      color: Colors.grey[300],
                                      child: const Icon(Icons.image, size: 24),
                                    ),
                                  )
                                : Container(
                                    width: 60,
                                    height: 60,
                                    color: Colors.black,
                                    child: const Icon(
                                      Icons.play_circle_outline,
                                      color: Colors.white,
                                      size: 24,
                                    ),
                                  ),
                          ),
                        );
                      },
                    ),
                  ),
                ],

                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(
                      _getAiValidationIcon(),
                      size: 16,
                      color: _getAiValidationColor(),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      _getAiValidationText(),
                      style: TextStyle(
                        fontSize: 12,
                        color: _getAiValidationColor(),
                      ),
                    ),
                    if (widget.post.aiValidationComment != null) ...[
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          widget.post.aiValidationComment!,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey[600],
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                  ],
                ),

                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.access_time, size: 14, color: Colors.grey[600]),
                    const SizedBox(width: 4),
                    Text(
                      DateFormat(
                        'MMM dd, yyyy HH:mm',
                      ).format(widget.post.createdAt),
                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                    ),
                    const Spacer(),
                    if (widget.post.isPinned)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.orange[100],
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Text(
                          'Pinned',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    if (widget.post.hashtags.isNotEmpty) ...[
                      const SizedBox(width: 8),
                      Icon(Icons.tag, size: 14, color: Colors.grey[600]),
                      const SizedBox(width: 2),
                      Text(
                        widget.post.hashtags.take(2).join(', '),
                        style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                      ),
                    ],
                  ],
                ),

                const Divider(height: 24),

                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: widget.onRevalidate,
                        icon: const Icon(Icons.refresh, size: 16),
                        label: const Text('Revalidate'),
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: widget.onReject,
                        icon: const Icon(Icons.close, size: 16),
                        label: const Text('Reject'),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.red,
                          padding: const EdgeInsets.symmetric(vertical: 8),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: widget.onApprove,
                        icon: const Icon(Icons.check, size: 16),
                        label: const Text('Approve'),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ],
          ),
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
