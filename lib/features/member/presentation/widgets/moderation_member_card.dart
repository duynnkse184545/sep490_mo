import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';
import 'package:sep490_mo/features/member/data/models/member_models.dart';

class ModerationMemberCard extends StatelessWidget {
  final Member member;
  final VoidCallback onApprove;
  final VoidCallback onReject;

  const ModerationMemberCard({
    super.key,
    required this.member,
    required this.onApprove,
    required this.onReject,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12, left: 4, right: 10),
      padding: const EdgeInsets.all(16),
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
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.2),
            backgroundImage: member.avatarUrl != null ? NetworkImage(member.avatarUrl!) : null,
            child: member.avatarUrl == null
                ? Text(
                    (member.displayName ?? member.username ?? '?')[0].toUpperCase(),
                    style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.primary),
                  )
                : null,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  member.displayName ?? member.username ?? 'Unknown',
                  style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
                ),
                Text(
                  "@${member.username ?? 'unknown'}",
                  style: const TextStyle(color: Colors.grey, fontSize: 13),
                ),
                if (member.joinedAt != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      "Requested: ${DateFormat('MMM dd').format(member.joinedAt!)}",
                      style: const TextStyle(color: Colors.grey, fontSize: 11),
                    ),
                  ),
              ],
            ),
          ),
          Row(
            children: [
              _buildRoundActionButton(Icons.check, Colors.green, onApprove),
              const SizedBox(width: 8),
              _buildRoundActionButton(Icons.close, Colors.red, onReject),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRoundActionButton(IconData icon, Color color, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.1),
          shape: BoxShape.circle,
          border: Border.all(color: color, width: 1.5),
        ),
        child: Icon(icon, color: color, size: 20),
      ),
    );
  }
}
