import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:sep490_mo/features/member/data/models/member_models.dart';
import 'package:sep490_mo/features/member/data/models/member_report_models.dart';

class MemberReportCard extends HookWidget {
  final MemberWithReports member;
  final void Function(String message) onResolve;

  const MemberReportCard({
    super.key,
    required this.member,
    required this.onResolve,
  });

  @override
  Widget build(BuildContext context) {
    final isExpanded = useState(false);
    final selectedReportIndex = useState(0);
    final resolveMessageController = useTextEditingController();
    final resolveMessageError = useState<String?>(null);

    final colorScheme = Theme.of(context).colorScheme;
    final hasReports = member.reports.isNotEmpty;

    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(
          color: colorScheme.outline,
          width: 1,
        ),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () => isExpanded.value = !isExpanded.value,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ── Collapsed header row (always visible) ──
              Row(
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundColor: colorScheme.primary.withAlpha(51),
                    backgroundImage: member.avatarUrl != null
                        ? NetworkImage(member.avatarUrl!)
                        : null,
                    child: member.avatarUrl == null
                        ? Text(
                            (member.displayName ?? member.username ?? '?')[0]
                                .toUpperCase(),
                            style: TextStyle(
                              color: colorScheme.primary,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          )
                        : null,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          member.displayName ?? member.username ?? 'Unknown',
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                        if (!isExpanded.value)
                          Text(
                            '@${member.username ?? 'unknown'}',
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
                    isExpanded.value ? Icons.expand_less : Icons.expand_more,
                    size: 20,
                    color: Colors.grey[600],
                  ),
                ],
              ),

              // ── Expanded body ──
              if (isExpanded.value) ...[
                const SizedBox(height: 12),

                // Member details
                Row(
                  children: [
                    const Icon(Icons.person, size: 16, color: Colors.grey),
                    const SizedBox(width: 4),
                    Text(
                      'FanHub: ${member.fanHubName}',
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.work, size: 16, color: Colors.grey),
                    const SizedBox(width: 4),
                    Text(
                      'Role: ${member.roleInHub.name}',
                      style: const TextStyle(fontSize: 13),
                    ),
                  ],
                ),
                if (member.joinedAt != null) ...[
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(
                        Icons.calendar_today,
                        size: 16,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'Joined: ${_formatDate(member.joinedAt!)}',
                        style: TextStyle(fontSize: 13, color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ],

                const SizedBox(height: 12),
                Text(
                  'Reports (${member.reports.length})',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 8),

                if (hasReports) ...[
                  // Report selector if multiple reports
                  if (member.reports.length > 1)
                    Row(
                      children: [
                        const Text('Report: ', style: TextStyle(fontSize: 12)),
                        Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                member.reports.length,
                                (index) => Padding(
                                  padding: const EdgeInsets.only(right: 4),
                                  child: FilterChip(
                                    label: Text(
                                      '#${index + 1}',
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                    selected: selectedReportIndex.value == index,
                                    onSelected: (_) {
                                      selectedReportIndex.value = index;
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  if (member.reports.length > 1) const SizedBox(height: 8),

                  // Selected report details
                  _buildReportDetails(
                    member.reports[selectedReportIndex.value],
                  ),
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
                      _formatDate(member.memberStatus == MemberStatus.pending
                          ? DateTime.now()
                          : member.joinedAt ?? DateTime.now()),
                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: _getStatusColor(member.memberStatus)
                            .withAlpha(51),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        member.memberStatus.name,
                        style: TextStyle(
                          fontSize: 10,
                          color: _getStatusColor(member.memberStatus),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 12),

                // ── Resolve message (required) ──
                TextField(
                  controller: resolveMessageController,
                  minLines: 3,
                  maxLines: 5,
                  keyboardType: TextInputType.multiline,
                  onChanged: (_) {
                    if (resolveMessageError.value != null) {
                      resolveMessageError.value = null;
                    }
                  },
                  decoration: InputDecoration(
                    hintText: 'Resolve message (required)...',
                    border: const OutlineInputBorder(),
                    isDense: true,
                    contentPadding: const EdgeInsets.all(10),
                    errorText: resolveMessageError.value,
                  ),
                ),
                const SizedBox(height: 8),

                // ── Resolve button ──
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: () {
                          final message = resolveMessageController.text.trim();
                          if (message.isEmpty) {
                            resolveMessageError.value =
                                'A resolve message is required';
                            return;
                          }
                          onResolve(message);
                        },
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
    final reportCount = member.reports.length;
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

  Color _getStatusColor(MemberStatus status) {
    return switch (status) {
      MemberStatus.pending => Colors.orange,
      MemberStatus.joined => Colors.green,
      MemberStatus.rejected => Colors.red,
    };
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
