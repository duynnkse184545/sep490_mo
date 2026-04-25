import 'package:flutter/material.dart';
import 'package:sep490_mo/features/user/data/models/user_models.dart';

class ProfileAccountInfo extends StatelessWidget {
  final User user;
  const ProfileAccountInfo({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Account Information',
              style: Theme.of(context).textTheme.titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildInfoRow(
              icon: Icons.calendar_today_outlined,
              label: 'Member since',
              value: _formatDate(user.createdAt),
              context: context,
            ),
            const SizedBox(height: 8),
            _buildInfoRow(
              icon: Icons.update_outlined,
              label: 'Last updated',
              value: _formatDate(user.updatedAt),
              context: context,
            ),
            const SizedBox(height: 8),
            _buildInfoRow(
              icon: user.isActive
                  ? Icons.check_circle_outline
                  : Icons.cancel_outlined,
              label: 'Status',
              value: user.isActive ? 'Active' : 'Inactive',
              context: context,
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow({
    required IconData icon,
    required String label,
    required String value,
    required BuildContext context,
  }) {
    return Row(
      children: [
        Icon(
          icon,
          size: 20,
          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
        ),
        const SizedBox(width: 12),
        Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Theme.of(
              context,
            ).colorScheme.onSurface.withValues(alpha: 0.6),
          ),
        ),
        const Spacer(),
        Text(
          value,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}
