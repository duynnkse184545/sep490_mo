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
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text('PAYMENT STATUS', style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.5)),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(24),
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.border, width: 2),
            boxShadow: const [
              BoxShadow(color: AppColors.border, offset: Offset(8, 8)),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                isSuccess ? Icons.check_circle : Icons.error,
                color: isSuccess ? AppColors.success : Colors.red,
                size: 80,
              ),
              const SizedBox(height: 24),
              Text(
                isSuccess ? 'PAYMENT SUCCESSFUL!' : 'PAYMENT CANCELED OR FAILED.',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Color(0xFF323232),
                  letterSpacing: 1,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                isSuccess
                    ? 'Your account has been credited with the purchased package.'
                    : 'The transaction was not completed. You have not been charged.',
                style: const TextStyle(fontSize: 14, color: Colors.grey, height: 1.5),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              InkWell(
                onTap: () {
                  context.go('/home');
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    border: Border.all(color: AppColors.border, width: 2),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(color: AppColors.border, offset: Offset(4, 4)),
                    ],
                  ),
                  child: const Text(
                    'RETURN TO HOME',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, letterSpacing: 1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
