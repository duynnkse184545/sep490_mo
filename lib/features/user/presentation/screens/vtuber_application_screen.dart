import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:sep490_mo/core/widgets/loader.dart';
import 'package:sep490_mo/features/user/data/models/vtuber_models.dart';
import 'package:sep490_mo/features/user/presentation/controllers/vtuber_application_controller.dart';
import 'package:sep490_mo/features/user/presentation/states/vtuber_application_state.dart';

enum _ViewMode { send, my }

class VtuberApplicationScreen extends HookConsumerWidget {
  const VtuberApplicationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewMode = useState(_ViewMode.send);
    final state = ref.watch(vtuberApplicationControllerProvider);
    final controller = ref.read(vtuberApplicationControllerProvider.notifier);

    // Initial fetch for "My Application"
    useEffect(() {
      Future.microtask(() => controller.fetchMyApplication());
      return null;
    }, []);

    // Listen for success side effects
    ref.listen(vtuberApplicationControllerProvider, (previous, next) {
      next.maybeWhen(
        success: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Application submitted successfully!')),
          );
          controller.fetchMyApplication();
          viewMode.value = _ViewMode.my;
        },
        orElse: () {},
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('VTuber Application'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SegmentedButton<_ViewMode>(
              segments: const [
                ButtonSegment(
                  value: _ViewMode.send,
                  label: Text('Send Application'),
                  icon: Icon(Icons.send_outlined),
                ),
                ButtonSegment(
                  value: _ViewMode.my,
                  label: Text('My Application'),
                  icon: Icon(Icons.history_outlined),
                ),
              ],
              selected: {viewMode.value},
              onSelectionChanged: (Set<_ViewMode> newSelection) {
                viewMode.value = newSelection.first;
              },
            ),
          ),
          Expanded(
            child: state.maybeWhen(
              loading: () => const Loader(),
              error: (message) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Error: $message', style: const TextStyle(color: Colors.red)),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        if (viewMode.value == _ViewMode.my) {
                          controller.fetchMyApplication();
                        } else {
                          controller.reset();
                        }
                      },
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              ),
              success: () => const SizedBox.shrink(), // Handled by listener
              loaded: (apps) {
                if (viewMode.value == _ViewMode.send) {
                  return _SendApplicationView(onSubmit: controller.registerVtuber);
                }
                return _MyApplicationView(
                  applications: apps,
                  onRefresh: controller.fetchMyApplication,
                );
              },
              orElse: () {
                if (viewMode.value == _ViewMode.send) {
                  return _SendApplicationView(onSubmit: controller.registerVtuber);
                }
                return const Center(child: Text('No applications found.'));
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _SendApplicationView extends HookWidget {
  final Function(VtuberRegisterRequest) onSubmit;

  const _SendApplicationView({required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    final channelNameController = useTextEditingController();
    final channelLinkController = useTextEditingController();
    final formKey = useMemoized(() => GlobalKey<FormState>());

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Apply to become a VTuber on our platform. Please provide your channel details for verification.',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 24),
            TextFormField(
              controller: channelNameController,
              decoration: const InputDecoration(
                labelText: 'Channel Name',
                border: OutlineInputBorder(),
                hintText: 'e.g. Gawr Gura Ch.',
              ),
              validator: (v) => (v == null || v.isEmpty) ? 'Required' : null,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: channelLinkController,
              decoration: const InputDecoration(
                labelText: 'Channel Link',
                border: OutlineInputBorder(),
                hintText: 'https://youtube.com/@...',
              ),
              validator: (v) => (v == null || v.isEmpty) ? 'Required' : null,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  onSubmit(VtuberRegisterRequest(
                    channelName: channelNameController.text.trim(),
                    channelLink: channelLinkController.text.trim(),
                  ));
                }
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: const Text('Submit Application'),
            ),
          ],
        ),
      ),
    );
  }
}

class _MyApplicationView extends StatelessWidget {
  final List<VtuberApplication> applications;
  final VoidCallback onRefresh;

  const _MyApplicationView({
    required this.applications,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    if (applications.isEmpty) {
      return RefreshIndicator(
        onRefresh: () async => onRefresh(),
        child: const SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(top: 100),
              child: Text('No applications found.'),
            ),
          ),
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: () async => onRefresh(),
      child: ListView.separated(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(16),
        itemCount: applications.length,
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (context, index) => _VtuberApplicationTile(
          application: applications[index],
        ),
      ),
    );
  }
}

class _VtuberApplicationTile extends StatelessWidget {
  final VtuberApplication application;

  const _VtuberApplicationTile({required this.application});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final statusColor = switch (application.status) {
      VtuberApplicationStatus.pending => Colors.orange,
      VtuberApplicationStatus.approved => Colors.green,
      VtuberApplicationStatus.rejected => Colors.red,
    };

    return Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Application #${application.id}',
                  style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: statusColor.withAlpha(51),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    application.status.name.toUpperCase(),
                    style: TextStyle(
                      color: statusColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            const Divider(height: 32),
            _buildInfo('Channel Name', application.channelName),
            const SizedBox(height: 12),
            _buildInfo('Channel Link', application.channelLink),
            const SizedBox(height: 12),
            _buildInfo('Applied On', DateFormat('MMM dd, yyyy HH:mm').format(application.createdAt)),
            if (application.status == VtuberApplicationStatus.rejected && application.reason != null) ...[
              const SizedBox(height: 12),
              const Text('Rejection Reason', style: TextStyle(color: Colors.grey, fontSize: 12)),
              const SizedBox(height: 4),
              Text(
                application.reason!,
                style: const TextStyle(color: Colors.red, fontStyle: FontStyle.italic),
              ),
            ],
            if (application.reviewAt != null) ...[
              const SizedBox(height: 12),
              _buildInfo('Reviewed At', DateFormat('MMM dd, yyyy HH:mm').format(application.reviewAt!)),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildInfo(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(color: Colors.grey, fontSize: 12)),
        const SizedBox(height: 4),
        Text(value, style: const TextStyle(fontWeight: FontWeight.w500)),
      ],
    );
  }
}
