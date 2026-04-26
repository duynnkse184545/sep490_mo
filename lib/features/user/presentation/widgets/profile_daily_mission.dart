import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';
import 'package:sep490_mo/core/widgets/loader.dart';
import 'package:sep490_mo/features/user/presentation/controllers/user_profile_controller.dart';
import 'daily_mission_donut.dart';

class ProfileDailyMission extends StatelessWidget {
  const ProfileDailyMission({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'DAILY MISSIONS',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 14,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(height: 12),
            DailyMissionContent(),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

class DailyMissionContent extends ConsumerWidget {
  const DailyMissionContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final missionAsync = ref.watch(dailyMissionProvider);

    return missionAsync.when(
      data: (mission) {
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.border, width: 2),
            boxShadow: const [
              BoxShadow(color: AppColors.border, offset: Offset(4, 4)),
            ],
          ),
          child: Column(
            children: [
              Row(
                children: [
                  DailyMissionDonut(count: mission.likeAmount, maxCount: 20),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Like 20 Posts",
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900, color: Color(0xFF323232)),
                        ),
                        const SizedBox(height: 12),
                        _buildMilestoneDot("10 Likes", mission.likeAmount >= 10, mission.bonus10),
                        const SizedBox(height: 8),
                        _buildMilestoneDot("20 Likes", mission.likeAmount >= 20, mission.bonus20),
                      ],
                    ),
                  ),
                ],
              ),
              const Divider(height: 32, color: Colors.black12),
              const Text(
                "Keep liking to earn points! ✨",
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.grey),
              ),
            ],
          ),
        );
      },
      loading: () => const Center(child: SmallLoader()),
      error: (error, _) => Text('Error: $error', style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
    );
  }

  Widget _buildMilestoneDot(String label, bool reached, bool claimed) {
    Color color = Colors.grey;
    if (claimed) {
      color = Colors.green;
    } else if (reached) {
      color = AppColors.primary;
    }

    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle, 
            color: reached || claimed ? color : const Color(0xFFE0E0E0),
            border: Border.all(color: AppColors.border.withValues(alpha: 0.1), width: 1),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          "$label ${claimed ? '✓' : ''}",
          style: TextStyle(
            fontSize: 12,
            color: claimed ? Colors.green : (reached ? const Color(0xFF323232) : Colors.grey),
            fontWeight: reached || claimed ? FontWeight.w900 : FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
