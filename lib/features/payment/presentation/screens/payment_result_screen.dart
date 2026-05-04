import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';
import 'package:sep490_mo/features/payment/presentation/controllers/payment_controller.dart';

class PaymentResultScreen extends HookConsumerWidget {
  final String status;
  final int? paymentId;

  const PaymentResultScreen({
    super.key,
    required this.status,
    this.paymentId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSuccess = status == 'success' || status == 'return';

    useEffect(() {
      final id = paymentId;
      if (!isSuccess && id != null) {
        // Call cancel payment API in the background
        WidgetsBinding.instance.addPostFrameCallback((_) {
          ref.read(paymentControllerProvider.notifier).cancelPayment(id);
        });
      }
      return null;
    }, [isSuccess, paymentId]);

    return Scaffold(
      appBar: AppBar(title: const Text('Payment Status')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                isSuccess ? Icons.check_circle : Icons.error,
                color: isSuccess ? AppColors.success : Colors.red,
                size: 100,
              ),
              const SizedBox(height: 24),
              Text(
                isSuccess ? 'Payment Successful!' : 'Payment Canceled or Failed.',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                isSuccess
                    ? 'Your account has been credited with the purchased package.'
                    : 'The transaction was not completed. You have not been charged.',
                style: const TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  context.go('/home');
                },
                child: const Text('Return to Home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

