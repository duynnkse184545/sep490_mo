import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/core/widgets/loader.dart';
import 'package:sep490_mo/features/user/presentation/controllers/user_profile_controller.dart';

class ProfileFrames extends ConsumerWidget {
  const ProfileFrames({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final framesAsync = ref.watch(availableFramesProvider);

    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Avatar Frames',
              style: Theme.of(context).textTheme.titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            framesAsync.when(
              data: (frames) {
                return SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: frames.length,
                    itemBuilder: (context, index) {
                      final frame = frames[index];
                      return Container(
                        width: 100,
                        margin: const EdgeInsets.only(right: 12),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surfaceContainer,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (frame.imageUrl != null)
                              Image.network(frame.imageUrl!, width: 60, height: 60)
                            else
                              const Icon(Icons.portrait, size: 40),
                            const SizedBox(height: 4),
                            Text(
                              frame.itemName,
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
