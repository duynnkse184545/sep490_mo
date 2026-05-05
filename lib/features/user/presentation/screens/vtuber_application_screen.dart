import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';
import 'package:sep490_mo/core/widgets/loader.dart';
import 'package:sep490_mo/core/widgets/retro_text_field.dart';
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
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text(
          'VTUBER APPLICATION',
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.5),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: _buildViewModeSelector(context, viewMode),
          ),
          Expanded(
            child: state.maybeWhen(
              loading: () => const Loader(),
              error: (message) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Error: $message', style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 16),
                    _buildRetroButton(
                      label: 'RETRY',
                      onTap: () {
                        if (viewMode.value == _ViewMode.my) {
                          controller.fetchMyApplication();
                        } else {
                          controller.reset();
                        }
                      },
                    ),
                  ],
                ),
              ),
              success: () => const SizedBox.shrink(),
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
                return const Center(child: Text('No applications found.', style: TextStyle(fontWeight: FontWeight.bold)));
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildViewModeSelector(BuildContext context, ValueNotifier<_ViewMode> viewMode) {
    final modes = [
      {'mode': _ViewMode.send, 'label': 'Apply', 'icon': Icons.send_outlined},
      {'mode': _ViewMode.my, 'label': 'History', 'icon': Icons.history_outlined},
    ];

    return Row(
      children: modes.map((item) {
        final isSelected = viewMode.value == item['mode'];
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: GestureDetector(
              onTap: () => viewMode.value = item['mode'] as _ViewMode,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: isSelected ? Theme.of(context).colorScheme.primary : const Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: isSelected ? AppColors.border : Colors.black12,
                    width: 1.5,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      item['icon'] as IconData,
                      size: 18,
                      color: isSelected ? Colors.white : const Color(0xFF666666),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      item['label'] as String,
                      style: TextStyle(
                        color: isSelected ? Colors.white : const Color(0xFF666666),
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildRetroButton({required String label, required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: AppColors.border, width: 2),
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(color: AppColors.border, offset: Offset(4, 4)),
          ],
        ),
        child: Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.w900, color: Color(0xFF323232)),
        ),
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
      padding: const EdgeInsets.all(20),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.border, width: 2),
          boxShadow: const [
            BoxShadow(color: AppColors.border, offset: Offset(8, 8)),
          ],
        ),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Apply to become a VTuber',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18, color: Color(0xFF323232)),
              ),
              const SizedBox(height: 8),
              const Text(
                'Please provide your channel details for verification.',
                style: TextStyle(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w500),
              ),
              const Divider(height: 32),
              
              _buildLabel('CHANNEL NAME'),
              RetroTextField(
                hintText: 'e.g. Gawr Gura Ch.',
                controller: channelNameController,
              ),
              const SizedBox(height: 20),
              
              _buildLabel('CHANNEL LINK'),
              RetroTextField(
                hintText: 'https://youtube.com/@...',
                controller: channelLinkController,
              ),
              const SizedBox(height: 32),
              
              _buildSubmitButton(context, formKey, channelNameController, channelLinkController),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLabel(String label) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        label,
        style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 11, letterSpacing: 1.2, color: Colors.grey),
      ),
    );
  }

  Widget _buildSubmitButton(BuildContext context, GlobalKey<FormState> formKey, TextEditingController name, TextEditingController link) {
    return InkWell(
      onTap: () {
        if (formKey.currentState!.validate()) {
          onSubmit(VtuberRegisterRequest(
            channelName: name.text.trim(),
            channelLink: link.text.trim(),
          ));
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          border: Border.all(color: AppColors.border, width: 2),
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(color: AppColors.border, offset: Offset(4, 4)),
          ],
        ),
        child: const Text(
          'SUBMIT APPLICATION',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, letterSpacing: 1),
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
              child: Text('No applications found.', style: TextStyle(fontWeight: FontWeight.bold)),
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
        separatorBuilder: (_, _) => const SizedBox(height: 12),
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
    final statusColor = switch (application.status) {
      VtuberApplicationStatus.pending => Colors.orange,
      VtuberApplicationStatus.approved => Colors.green,
      VtuberApplicationStatus.rejected => Colors.red,
    };

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border, width: 2),
        boxShadow: const [
          BoxShadow(color: AppColors.border, offset: Offset(4, 4)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'APP #${application.id}',
                style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 13, letterSpacing: 1),
              ),
              _buildStatusBadge(application.status, statusColor),
            ],
          ),
          const Divider(height: 32, color: Colors.black12),
          _buildInfo('CHANNEL NAME', application.channelName),
          const SizedBox(height: 12),
          _buildInfo('CHANNEL LINK', application.channelLink),
          const SizedBox(height: 12),
          _buildInfo('APPLIED ON', DateFormat('MMM dd, yyyy').format(application.createdAt)),
          
          if (application.status == VtuberApplicationStatus.rejected && application.reason != null) ...[
            const SizedBox(height: 12),
            _buildInfo('REJECTION REASON', application.reason!, color: Colors.red),
          ],
        ],
      ),
    );
  }

  Widget _buildStatusBadge(VtuberApplicationStatus status, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: color, width: 1),
      ),
      child: Text(
        status.name.toUpperCase(),
        style: TextStyle(color: color, fontWeight: FontWeight.w900, fontSize: 10),
      ),
    );
  }

  Widget _buildInfo(String label, String value, {Color? color}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(color: Colors.grey, fontSize: 10, fontWeight: FontWeight.bold, letterSpacing: 1)),
        const SizedBox(height: 4),
        Text(value, style: TextStyle(fontWeight: FontWeight.w900, fontSize: 13, color: color ?? const Color(0xFF323232))),
      ],
    );
  }
}
