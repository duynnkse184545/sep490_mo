import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/features/member/data/models/member_models.dart';
import 'package:sep490_mo/features/member/presentation/controllers/member_checking_controller.dart';
import 'package:sep490_mo/features/member/presentation/widgets/join_questions_modal.dart';

class JoinHubButton extends ConsumerWidget {
  final int fanHubId;
  final bool requiresApproval;

  const JoinHubButton({
    super.key,
    required this.fanHubId,
    this.requiresApproval = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final memberAsync = ref.watch(memberCheckingControllerProvider(fanHubId: fanHubId));
    final controller = ref.read(memberCheckingControllerProvider(fanHubId: fanHubId).notifier);

    return memberAsync.when(
      data: (memberResponse) {
        // Owners (VTubers) don't need to join or leave their own hub
        if (memberResponse.roleInHub == MemberRole.vtuber) {
          return const SizedBox.shrink();
        }

        if (memberResponse.status == MemberStatus.pending) {
          return ElevatedButton.icon(
            onPressed: null,
            icon: const Icon(Icons.hourglass_empty, size: 18),
            label: const Text('Pending Approval'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey.shade400,
              disabledBackgroundColor: Colors.grey.shade400,
              disabledForegroundColor: Colors.white70,
            ),
          );
        }

        if (memberResponse.status == MemberStatus.joined) {
          return OutlinedButton.icon(
            onPressed: () => _showLeaveDialog(context, controller),
            icon: const Icon(Icons.exit_to_app, size: 18),
            label: const Text('Leave Hub'),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.red,
              side: const BorderSide(color: Colors.red),
            ),
          );
        }

        // Not joined and not pending (either never joined or rejected)
        return ElevatedButton.icon(
          onPressed: () {
            if (requiresApproval) {
              _showJoinModal(context);
            } else {
              controller.join();
            }
          },
          icon: const Icon(Icons.add),
          label: const Text('Join Hub'),
        );
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

  void _showJoinModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => JoinQuestionsModal(
        fanHubId: fanHubId,
        onSuccess: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Join request submitted successfully!')),
          );
        },
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
