import 'package:flutter/material.dart';
import 'package:sep490_mo/app/router/routes.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';

class ProfileActions extends StatelessWidget {
  final Widget? logoutButton;
  const ProfileActions({super.key, this.logoutButton});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border, width: 2),
        boxShadow: const [
          BoxShadow(color: AppColors.border, offset: Offset(6, 6)),
        ],
      ),
      child: Column(
        children: [
          _buildActionRow(
            context,
            icon: Icons.bookmark_outline,
            label: 'My Bookmarks',
            onTap: () => const BookmarkRoute().push(context),
          ),
          const Divider(height: 1, color: Colors.black12),
          _buildActionRow(
            context,
            icon: Icons.video_camera_front_outlined,
            label: 'VTuber Application',
            onTap: () => const VtuberApplicationRoute().push(context),
          ),
          if (logoutButton != null) ...[
            const Divider(height: 1, color: Colors.black12),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: logoutButton!,
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildActionRow(BuildContext context, {required IconData icon, required String label, required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
        child: Row(
          children: [
            Icon(icon, size: 20, color: const Color(0xFF323232)),
            const SizedBox(width: 12),
            Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Color(0xFF323232)),
            ),
            const Spacer(),
            const Icon(Icons.chevron_right, size: 16, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
