import 'package:flutter/material.dart';
import 'package:freestyle_speed_dial/freestyle_speed_dial.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/app/router/routes.dart';
import 'package:sep490_mo/features/member/data/models/member_models.dart';
import 'package:sep490_mo/features/member/data/providers/member_providers.dart';

enum _DialAction { createPost, members, moderation, invite, settings, report }

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

    final isMember = memberAsync.when(
      data: (member) => member.isMember,
      error: (error, stack) => false,
      loading: () => false,
    );

    final memberRole = memberAsync.whenOrNull(
      data: (member) => member.roleInHub,
    );

    final actions = [
      // ── going UP ──────────────────────────────
      if (isMember)
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
      if (isMember)
        (
          action: _DialAction.createPost,
          icon: Icons.edit_outlined,
          label: 'Create Post',
          goUp: true,
        ),
      // ── going LEFT ────────────────────────────
      if (memberRole == MemberRole.moderator)
        (
          action: _DialAction.moderation,
          icon: Icons.shield_outlined,
          label: 'Moderation',
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
          CreatePostRoute(
            subdomain: subdomain,
            fanHubId: fanHubId,
          ).push(context);
          break;
        case _DialAction.members:
          MemberListRoute(
            subdomain: subdomain,
            fanHubId: fanHubId,
          ).push(context);
          break;
        case _DialAction.invite:
          break; // InviteRoute
        case _DialAction.moderation:
          ModerationRoute(
            subdomain: subdomain,
            fanHubId: fanHubId,
          ).push(context);
          break;
        case _DialAction.settings:
          break; // HubSettingsRoute
        case _DialAction.report:
          break; // ReportRoute
      }
    }

    return SpeedDialBuilder(
      key: ValueKey('speed_dial_$subdomain'),
      buttonAnchor: Alignment.bottomRight,
      itemAnchor: Alignment.bottomRight,
      buttonBuilder: (context, isActive, toggle) {
        return FloatingActionButton(
          onPressed: toggle,
          child: AnimatedRotation(
            turns: isActive ? 0.125 : 0,
            duration: const Duration(milliseconds: 200),
            child: const Icon(Icons.add),
          ),
        );
      },
      itemBuilder: (context, item, i, animation) {
        final isUp = item.goUp;

        final groupIndex = isUp
            ? upItems.indexWhere((a) => a.action == item.action)
            : leftItems.indexWhere((a) => a.action == item.action);

        if (groupIndex == -1) return const SizedBox.shrink();

        const double step = 56.0;

        return Transform.translate(
          offset: isUp
              ? Offset(0, -(groupIndex + 1.1) * step)
              : Offset(-(groupIndex + 1.1) * step, 0),
          child: ScaleTransition(
            scale: animation,
            child: FloatingActionButton.small(
              heroTag: '${item.label}_speed_dial',
              onPressed: () => handleTap(item.action),
              child: Icon(item.icon),
            ),
          ),
        );
      },
      items: actions,
    );
  }
}
