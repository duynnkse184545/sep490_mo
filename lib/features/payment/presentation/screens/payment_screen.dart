import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/core/widgets/empty_state.dart';
import 'package:sep490_mo/core/widgets/error_retry_widget.dart';
import 'package:sep490_mo/core/widgets/loader.dart';
import 'package:sep490_mo/features/payment/presentation/controllers/payment_controller.dart';
import 'package:sep490_mo/features/payment/presentation/states/payment_state.dart';
import 'package:sep490_mo/features/payment/presentation/widgets/package_card.dart';


class PaymentScreen extends HookConsumerWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final paymentAsync = ref.watch(paymentControllerProvider);
    final controller = ref.read(paymentControllerProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Points Packages'),
      ),
      body: paymentAsync.when(
        loading: () => const Loader(),
        error: (error, stack) => ErrorBanner(
          message: error.toString(),
          onRetry: controller.refresh,
        ),
        data: (state) => state.when(
          ready: (packages) => RefreshIndicator(
            onRefresh: controller.refresh,
            child: ListView.builder(
              itemCount: packages.length,
              itemBuilder: (context, index) {
                return PackageCard(
                  package: packages[index],
                  onCreatePayment: controller.createPayment,
                );
              },
            ),
          ),
          empty: () => const EmptyState(
            message: "No coin packages available.",
            icon: Icons.monetization_on_outlined,
          ),
        ),
      ),
    );
  }
}
