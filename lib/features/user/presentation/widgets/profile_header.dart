import 'package:flutter/material.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';
import 'package:sep490_mo/features/user/data/models/user_models.dart';

class ProfileHeader extends StatelessWidget {
  final User user;
  final VoidCallback? onEdit;
  const ProfileHeader({super.key, required this.user, this.onEdit});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: const Border(bottom: BorderSide(color: AppColors.border, width: 2)),
      ),
      child: Column(
        children: [
          // Avatar with Frame and Edit Button
          Stack(
            alignment: Alignment.center,
            children: [
              // 1. Shadow & Background Container
              Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(color: Theme.of(context).colorScheme.primary, width: 4),
                  boxShadow: const [
                    BoxShadow(color: AppColors.border, offset: Offset(4, 4)),
                  ],
                ),
              ),

              // 2. User Frame
              if (user.frameUrl != null && user.frameUrl!.isNotEmpty)
                IgnorePointer(
                  child: SizedBox(
                    width: 140, // Frame is usually larger than the avatar
                    height: 140,
                    child: Image.network(
                      user.frameUrl!,
                      fit: BoxFit.contain,
                      isAntiAlias: true,
                      filterQuality: FilterQuality.high,
                      colorBlendMode: BlendMode.multiply,
                      color: Colors.white,
                      errorBuilder: (_, _, _) => const SizedBox.shrink(),
                    ),
                  ),
                ),


              // 3. The Actual Avatar
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.transparent,
                backgroundImage: user.avatarUrl != null ? NetworkImage(user.avatarUrl!) : null,
                child: user.avatarUrl == null
                    ? Text(
                        (user.displayName ?? user.username)[0].toUpperCase(),
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w900,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      )
                    : null,
              ),

              // 4. Edit Button
              if (onEdit != null)
                Positioned(
                  bottom: 5,
                  right: 5,
                  child: InkWell(
                    onTap: onEdit,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: const Icon(Icons.edit, size: 16, color: Colors.white),
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 16),
          // Name and Role
          Text(
            user.displayName ?? user.username,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w900, color: Color(0xFF323232)),
          ),
          Text(
            "@${user.username}",
            style: const TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          _buildRoleBadge(context, user.role),
        ],
      ),
    );
  }

  Widget _buildRoleBadge(BuildContext context, UserRole role) {
    final color = role == UserRole.vtuber ? Colors.purple : Theme.of(context).colorScheme.primary;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.border, width: 1.5),
      ),
      child: Text(
        role.name.toUpperCase(),
        style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w900),
      ),
    );
  }
}
