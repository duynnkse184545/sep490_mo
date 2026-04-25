import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/core/widgets/loader.dart';
import 'package:sep490_mo/features/user/presentation/controllers/user_profile_controller.dart';

class ProfileDailyMission extends ConsumerWidget {
  const ProfileDailyMission({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final missionAsync = ref.watch(dailyMissionProvider);

    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Daily Mission',
              style: Theme.of(context).textTheme.titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            missionAsync.when(
              data: (mission) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        _buildMissionItem(
                          context,
                          'Likes Given',
                          '${mission.likeAmount} / 10',
                          mission.likeAmount >= 10,
                        ),
                        const Divider(),
                        _buildMissionItem(
                          context,
                          'Bonus (10 Likes)',
                          mission.bonus10 ? 'Completed' : 'In Progress',
                          mission.bonus10,
                        ),
                        const Divider(),
                        _buildMissionItem(
                          context,
                          'Bonus (20 Likes)',
                          mission.bonus20 ? 'Completed' : 'In Progress',
                          mission.bonus20,
                        ),
                      ],
                    ),
                  ),
                );
              },
              loading: () => const Loader(),
              error: (error, _) => Text('Error: $error'),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget _buildMissionItem(BuildContext context, String title, String subtitle, bool isCompleted) {
    return Row(
      children: [
        Icon(
          isCompleted ? Icons.check_circle : Icons.radio_button_unchecked,
          color: isCompleted ? Colors.green : Colors.grey,
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
            Text(subtitle, style: TextStyle(color: Colors.grey[600], fontSize: 12)),
          ],
        ),
      ],
    );
  }
}
