import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/features/member/presentation/controllers/member_checking_controller.dart';

class JoinHubButton extends ConsumerWidget {
  final int fanHubId;

  const JoinHubButton({
    super.key,
    required this.fanHubId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final memberAsync = ref.watch(memberCheckingControllerProvider(fanHubId: fanHubId));
    final controller = ref.read(memberCheckingControllerProvider(fanHubId: fanHubId).notifier);

    return memberAsync.when(
      data: (memberResponse) {
        final isMember = memberResponse.isMember;

        if (isMember) {
          return OutlinedButton.icon(
            onPressed: () => _showLeaveDialog(context, controller),
            icon: const Icon(Icons.exit_to_app, size: 18),
            label: const Text('Leave Hub'),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.red,
              side: const BorderSide(color: Colors.red),
            ),
          );
        } else {
          return ElevatedButton.icon(
            onPressed: () => controller.join(),
            icon: const Icon(Icons.add),
            label: const Text('Join Hub'),
          );
        }
      },
      loading: () => const ElevatedButton(
        onPressed: null,
        child: SizedBox(
          width: 16,
          height: 16,
          child: CircularProgressIndicator(strokeWidth: 2),
        ),
      ),
      error: (error, _) => ElevatedButton(
        onPressed: () => ref.invalidate(memberCheckingControllerProvider(fanHubId: fanHubId)),
        child: const Text('Retry'),
      ),
    );
  }

  Future<void> _showLeaveDialog(
    BuildContext context,
    MemberCheckingController controller,
  ) async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Leave FanHub?'),
        content: const Text(
          'Are you sure you want to leave this hub? You will no longer be able to post or interact until you join again.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {
              controller.leave();
              Navigator.of(context).pop();
            },
            child: const Text('Leave', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
