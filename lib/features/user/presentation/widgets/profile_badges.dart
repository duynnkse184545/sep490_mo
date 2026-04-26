import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';
import 'package:sep490_mo/core/widgets/loader.dart';
import 'package:sep490_mo/features/user/presentation/controllers/user_profile_controller.dart';

class ProfileBadges extends ConsumerWidget {
  final int userId;
  const ProfileBadges({super.key, required this.userId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final badgesAsync = ref.watch(userBadgesProvider(userId));

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border, width: 2),
        boxShadow: const [
          BoxShadow(color: AppColors.border, offset: Offset(6, 6)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'BADGES',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 12, letterSpacing: 1.2, color: Colors.grey),
              ),
              if (badgesAsync.hasValue && badgesAsync.value!.isNotEmpty)
                const Icon(Icons.arrow_forward, size: 16, color: Colors.grey),
            ],
          ),
          const SizedBox(height: 16),
          badgesAsync.when(
            data: (badges) {
              if (badges.isEmpty) {
                return const Text('No badges earned yet.', style: TextStyle(color: Colors.grey, fontSize: 13));
              }
              return SizedBox(
                height: 60,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: badges.length,
                  itemBuilder: (context, index) {
                    final badge = badges[index];
                    return Container(
                      width: 50,
                      height: 50,
                      margin: const EdgeInsets.only(right: 12),
                      decoration: BoxDecoration(
                        color: badge.isDisplay ? AppColors.primary.withValues(alpha: 0.1) : const Color(0xFFF5F5F5),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: badge.isDisplay ? AppColors.primary : Colors.black12,
                          width: 1.5,
                        ),
                      ),
                      child: Center(
                        child: badge.iconUrl != null
                            ? Image.network(badge.iconUrl!, width: 24, height: 24)
                            : Icon(
                                Icons.workspace_premium,
                                size: 24,
                                color: badge.isDisplay ? AppColors.primary : Colors.grey,
                              ),
                      ),
                    );
                  },
                ),
              );
            },
            loading: () => const Center(child: SmallLoader()),
            error: (error, _) => Text('Error: $error', style: const TextStyle(color: Colors.red, fontSize: 12)),
          ),
        ],
      ),
    );
  }
}
