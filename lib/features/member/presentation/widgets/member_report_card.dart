import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';
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

    final hasReports = member.reports.isNotEmpty;

    return Container(
      margin: const EdgeInsets.only(bottom: 12, left: 4, right: 10),
      decoration: BoxDecoration(
        color: Theme
            .of(context)
            .colorScheme
            .surface,
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
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ── Collapsed header row ──
              Row(
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundColor: Theme
                        .of(context)
                        .colorScheme
                        .primary
                        .withValues(alpha: 0.2),
                    backgroundImage: member.avatarUrl != null
                        ? NetworkImage(member.avatarUrl!)
                        : null,
                    child: member.avatarUrl == null
                        ? Text(
                      (member.displayName ?? member.username ?? '?')[0]
                          .toUpperCase(),
                      style: TextStyle(
                        color: Theme
                            .of(context)
                            .colorScheme
                            .primary,
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
                            fontWeight: FontWeight.w900,
                            fontSize: 14,
                            color: Color(0xFF323232),
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
                    color: AppColors.border,
                  ),
                ],
              ),

              // ── Expanded body ──
              if (isExpanded.value) ...[
                const SizedBox(height: 12),

                // Member details
                _buildInfoRow(Icons.person, 'FanHub: ${member.fanHubName}'),
                _buildInfoRow(Icons.work, 'Role: ${member.roleInHub.name}'),
                if (member.joinedAt != null)
                  _buildInfoRow(Icons.calendar_today,
                      'Joined: ${_formatDate(member.joinedAt!)}'),

                const SizedBox(height: 12),
                Text(
                  'REPORTS (${member.reports.length})',
                  style: const TextStyle(fontWeight: FontWeight.w900,
                      fontSize: 12,
                      letterSpacing: 1),
                ),
                const SizedBox(height: 8),

                if (hasReports) ...[
                  // Report selector if multiple reports
                  if (member.reports.length > 1) _buildReportSelector(
                      selectedReportIndex),
                  _buildReportDetails(
                      member.reports[selectedReportIndex.value]),
                ] else
                  const Text('No reports',
                      style: TextStyle(fontSize: 12, color: Colors.grey)),

                const Divider(height: 24),

                // Meta row
                Row(
                  children: [
                    const Icon(Icons.access_time, size: 14, color: Colors.grey),
                    const SizedBox(width: 4),
                    Text(
                      _formatDate(member.memberStatus == MemberStatus.pending
                          ? DateTime.now()
                          : member.joinedAt ?? DateTime.now()),
                      style: const TextStyle(fontSize: 11, color: Colors.grey),
                    ),
                    const Spacer(),
                    _buildMemberStatusBadge(member.memberStatus),
                  ],
                ),

                const SizedBox(height: 16),

                // Resolve message input
                _buildResolveInput(
                    resolveMessageController, resolveMessageError),

                const SizedBox(height: 12),

                // Resolve button
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
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        children: [
          Icon(icon, size: 14, color: Colors.grey[600]),
          const SizedBox(width: 8),
          Text(text,
              style: const TextStyle(fontSize: 13, color: Color(0xFF323232))),
        ],
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
            member.reports.length,
                (index) =>
                Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: ChoiceChip(
                    label: Text(
                        '#${index + 1}', style: const TextStyle(fontSize: 11)),
                    selected: selectedIndex.value == index,
                    onSelected: (_) => selectedIndex.value = index,
                    padding: EdgeInsets.zero,
                    visualDensity: VisualDensity.compact,
                  ),
                ),
          ),
        ),
      ),
    );
  }

  Widget _buildMemberStatusBadge(MemberStatus status) {
    final color = _getStatusColor(status);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: color, width: 1),
      ),
      child: Text(
        status.name.toUpperCase(),
        style: TextStyle(
            fontSize: 10, color: color, fontWeight: FontWeight.w900),
      ),
    );
  }

  Widget _buildResolveInput(TextEditingController controller,
      ValueNotifier<String?> error) {
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
              style: const TextStyle(color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 13),
            ),
          ],
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
          if (report.relatedComment != null) ...[
            const SizedBox(height: 12),
            const Text(
              'Related Comment:',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Container(
              margin: const EdgeInsets.only(bottom: 8),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: Colors.grey[200]!),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.comment, size: 14, color: Colors.blue),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          report.relatedComment!.content,
                          style: const TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    _formatDate(report.relatedComment!.createdAt),
                    style: TextStyle(fontSize: 10, color: Colors.grey[500]),
                  ),
                ],
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