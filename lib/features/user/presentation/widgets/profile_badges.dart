import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/core/widgets/loader.dart';
import 'package:sep490_mo/features/user/presentation/controllers/user_profile_controller.dart';

class ProfileBadges extends ConsumerWidget {
  final int userId;
  const ProfileBadges({super.key, required this.userId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final badgesAsync = ref.watch(userBadgesProvider(userId));

    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Badges',
              style: Theme.of(context).textTheme.titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            badgesAsync.when(
              data: (badges) {
                if (badges.isEmpty) {
                  return const Text('No badges yet.', style: TextStyle(color: Colors.grey));
                }
                return SizedBox(
                  height: 80,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: badges.length,
                    itemBuilder: (context, index) {
                      final badge = badges[index];
                      return Container(
                        width: 80,
                        margin: const EdgeInsets.only(right: 12),
                        decoration: BoxDecoration(
                          color: badge.isDisplay 
                            ? Theme.of(context).colorScheme.primaryContainer 
                            : Theme.of(context).colorScheme.surfaceContainer,
                          borderRadius: BorderRadius.circular(12),
                          border: badge.isDisplay 
                            ? Border.all(color: Theme.of(context).colorScheme.primary) 
                            : null,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (badge.iconUrl != null)
                              Image.network(badge.iconUrl!, width: 40, height: 40)
                            else
                              const Icon(Icons.workspace_premium, size: 40),
                            const SizedBox(height: 4),
                            Text(
                              badge.badgeName,
                              style: const TextStyle(fontSize: 10),
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      );
                    },
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
}
