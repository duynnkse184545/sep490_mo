import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sep490_mo/features/post/data/models/report_models.dart';

class ReportPostCard extends StatefulWidget {
  final PostWithReport post;
  final bool isSelected;
  final VoidCallback onToggleSelect;
  final VoidCallback onResolve;

  const ReportPostCard({
    super.key,
    required this.post,
    this.isSelected = false,
    required this.onToggleSelect,
    required this.onResolve,
  });

  @override
  State<ReportPostCard> createState() => _ReportPostCardState();
}

class _ReportPostCardState extends State<ReportPostCard> {
  bool _isExpanded = false;
  int _selectedReportIndex = 0;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final hasReports = widget.post.reports.isNotEmpty;

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
                  _buildReportBadge(context),
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

                if (widget.post.mediaUrls.isNotEmpty) ...[
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 60,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.post.mediaUrls.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.network(
                              widget.post.mediaUrls[index],
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                              errorBuilder: (_, _, _) => Container(
                                width: 60,
                                height: 60,
                                color: Colors.grey[300],
                                child: const Icon(Icons.image, size: 24),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],

                const SizedBox(height: 12),
                Text(
                  'Reports (${widget.post.reports.length})',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 8),

                if (hasReports) ...[
                  // Report selector if multiple reports
                  if (widget.post.reports.length > 1)
                    Row(
                      children: [
                        const Text('Report: ', style: TextStyle(fontSize: 12)),
                        Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                widget.post.reports.length,
                                (index) => Padding(
                                  padding: const EdgeInsets.only(right: 4),
                                  child: FilterChip(
                                    label: Text(
                                      '#${index + 1}',
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                    selected: _selectedReportIndex == index,
                                    onSelected: (_) {
                                      setState(
                                        () => _selectedReportIndex = index,
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  if (widget.post.reports.length > 1)
                    const SizedBox(height: 8),

                  // Selected report details
                  _buildReportDetails(widget.post.reports[_selectedReportIndex]),
                ] else
                  const Text(
                    'No reports',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),

                const SizedBox(height: 12),
                const Divider(),
                const SizedBox(height: 8),

                Row(
                  children: [
                    Icon(Icons.access_time, size: 14, color: Colors.grey[600]),
                    const SizedBox(width: 4),
                    Text(
                      _formatDate(widget.post.postCreatedAt),
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

                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: widget.onResolve,
                        icon: const Icon(Icons.check_circle, size: 16),
                        label: const Text('Resolve'),
                        style: OutlinedButton.styleFrom(
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

  Widget _buildReportBadge(BuildContext context) {
    final reportCount = widget.post.reports.length;
    final color = reportCount > 2
        ? Colors.red
        : reportCount > 0
            ? Colors.orange
            : Colors.grey;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withAlpha(51),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        '$reportCount report${reportCount != 1 ? 's' : ''}',
        style: TextStyle(
          fontSize: 10,
          color: color,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildReportDetails(Report report) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.flag, size: 16, color: Colors.orange),
              const SizedBox(width: 4),
              Expanded(
                child: Text(
                  report.reason,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Text(
                'By: ${report.reportedByDisplayName}',
                style: TextStyle(fontSize: 11, color: Colors.grey[600]),
              ),
              const SizedBox(width: 8),
              Text(
                _formatDate(report.reportCreatedAt),
                style: TextStyle(fontSize: 11, color: Colors.grey[600]),
              ),
            ],
          ),
          if (report.resolveMessage != null) ...[
            const SizedBox(height: 4),
            Text(
              'Resolved: ${report.resolveMessage}',
              style: TextStyle(
                fontSize: 11,
                color: Colors.green[700],
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ],
      ),
    );
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inDays == 0) {
      return '${difference.inHours}h ago';
    } else if (difference.inDays < 7) {
      return '${difference.inDays}d ago';
    } else {
      final formatter = DateFormat('MMM dd, yyyy');
      return formatter.format(date);
    }
  }
}
