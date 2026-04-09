import 'package:flutter/material.dart';
import 'package:freestyle_speed_dial/freestyle_speed_dial.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/app/router/routes.dart';
import 'package:sep490_mo/features/member/data/providers/member_providers.dart';

enum _DialAction { createPost, members, leaderboard, invite, settings, report }

class HubSpeedDial extends HookConsumerWidget {
  final String subdomain;
  final int fanHubId;

  const HubSpeedDial({
    super.key,
    required this.subdomain,
    required this.fanHubId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final memberAsync = ref.watch(memberCheckingProvider(fanHubId: fanHubId));

    final canCreatePost = memberAsync.when(
      data: (member) => member.isMember,
      error: (error, stack) => false,
      loading: () => false,
    );

    final actions = [
      // ── going UP ──────────────────────────────
      if (canCreatePost)
        (
          action: _DialAction.createPost,
          icon: Icons.edit_outlined,
          label: 'Create Post',
          goUp: true,
        ),
      (
        action: _DialAction.members,
        icon: Icons.people_outline,
        label: 'Members',
        goUp: true,
      ),
      (
        action: _DialAction.invite,
        icon: Icons.person_add_outlined,
        label: 'Invite',
        goUp: true,
      ),
      // ── going LEFT ────────────────────────────
      (
        action: _DialAction.leaderboard,
        icon: Icons.leaderboard_outlined,
        label: 'Leaderboard',
        goUp: false,
      ),
      (
        action: _DialAction.settings,
        icon: Icons.settings_outlined,
        label: 'Settings',
        goUp: false,
      ),
      (
        action: _DialAction.report,
        icon: Icons.flag_outlined,
        label: 'Report',
        goUp: false,
      ),
    ];

    final upItems = actions.where((a) => a.goUp).toList();
    final leftItems = actions.where((a) => !a.goUp).toList();

    void handleTap(_DialAction action) {
      switch (action) {
        case _DialAction.createPost:
          CreatePostRoute(subdomain: subdomain, fanHubId: fanHubId).push(context);
        case _DialAction.members:
          break; // MembersRoute
        case _DialAction.invite:
          break; // InviteRoute
        case _DialAction.leaderboard:
          break; // LeaderboardRoute
        case _DialAction.settings:
          break; // HubSettingsRoute
        case _DialAction.report:
          break; // ReportRoute
      }
    }

    return SpeedDialBuilder(
      buttonAnchor: Alignment.topCenter,
      itemAnchor: Alignment.bottomCenter,
      buttonBuilder: (context, isActive, toggle) => FloatingActionButton(
        onPressed: toggle,
        child: AnimatedRotation(
          turns: isActive ? 0.125 : 0,
          duration: const Duration(milliseconds: 200),
          child: const Icon(Icons.add),
        ),
      ),
      itemBuilder: (context, item, i, animation) {
        final isUp = item.goUp;

        final groupIndex = isUp
            ? upItems.indexWhere((a) => a.action == item.action)
            : leftItems.indexWhere((a) => a.action == item.action);

        if (groupIndex == -1) return const SizedBox.shrink();

        const double step = 56.0;

        return Transform.translate(
          offset: isUp
              ? Offset(0, -(groupIndex + 0.15) * step)
              : Offset(-(groupIndex + 1) * step, 55),
          child: ScaleTransition(
            scale: animation,
            child: _DialButton(
              icon: item.icon,
              label: item.label,
              showLabelOnLeft: isUp,
              onTap: () => handleTap(item.action),
            ),
          ),
        );
      },
      items: actions,
    );
  }
}

class _DialButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool showLabelOnLeft;
  final VoidCallback onTap;

  const _DialButton({
    required this.icon,
    required this.label,
    required this.showLabelOnLeft,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final fab = FloatingActionButton.small(
      heroTag: '${label}_speed_dial',
      onPressed: onTap,
      child: Icon(icon),
    );

    // final labelWidget = Material(
    //   borderRadius: BorderRadius.circular(4),
    //   color: Theme.of(context).colorScheme.surfaceContainerHighest,
    //   child: Padding(
    //     padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    //     child: Text(label, style: Theme.of(context).textTheme.labelMedium),
    //   ),
    // );

    if (showLabelOnLeft) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [fab],
      );
    } else {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [fab],
      );
    }
  }
}
