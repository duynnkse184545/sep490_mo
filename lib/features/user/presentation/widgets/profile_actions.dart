import 'package:flutter/material.dart';
import 'package:sep490_mo/app/router/routes.dart';

class ProfileActions extends StatelessWidget {
  final Widget? logoutButton;
  const ProfileActions({super.key, this.logoutButton});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.bookmark_outline),
              title: const Text('My Bookmarks'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => const BookmarkRoute().push(context),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(
                  color: Theme.of(context).colorScheme.outlineVariant,
                ),
              ),
            ),
            const SizedBox(height: 12),
            ListTile(
              leading: const Icon(Icons.video_camera_front_outlined),
              title: const Text('VTuber Application'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => const VtuberApplicationRoute().push(context),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(
                  color: Theme.of(context).colorScheme.outlineVariant,
                ),
              ),
            ),
            const SizedBox(height: 12),
            if (logoutButton != null) ...[
              logoutButton!,
              const SizedBox(height: 12),
            ],
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
