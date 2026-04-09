import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/app/router/routes.dart';
import 'package:sep490_mo/features/member/data/providers/member_providers.dart';

class CreatePostButton extends HookConsumerWidget {
  final String subdomain;
  final int fanHubId;

  const CreatePostButton({
    super.key,
    required this.subdomain,
    required this.fanHubId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final memberAsync = ref.watch(memberCheckingProvider(fanHubId: fanHubId));

    return memberAsync.when(
      data: (member) {
        if (!member.isMember) {
          return const SizedBox.shrink();
        }
        return IconButton(
          icon: const Icon(Icons.add_circle_outline),
          onPressed: () => CreatePostRoute(
            subdomain: subdomain,
            fanHubId: fanHubId,
          ).push(context),
          tooltip: 'Create Post',
        );
      },
      loading: () => const SizedBox.shrink(),
      error: (_, _) => const SizedBox.shrink(),
    );
  }
}