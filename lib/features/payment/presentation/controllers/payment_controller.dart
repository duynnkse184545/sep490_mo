import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/app/app_notifier.dart';
import 'package:sep490_mo/app/app_state.dart';
import 'package:sep490_mo/features/payment/data/models/payment_models.dart';
import 'package:sep490_mo/features/payment/data/providers/payment_providers.dart';
import 'package:sep490_mo/features/payment/presentation/states/payment_state.dart';

part 'payment_controller.g.dart';

@riverpod
class PaymentController extends _$PaymentController {
  @override
  Future<PaymentState> build() {
    return _fetchPackages();
  }

  Future<PaymentState> _fetchPackages() async {
    final result = await ref.read(paymentRepositoryProvider).getPackages().run();
    return result.fold(
      (failure) => throw failure,
      (packages) => packages.isEmpty
          ? const PaymentState.empty()
          : PaymentState.ready(packages),
    );
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
    await future;
  }

  Future<String?> createPayment(Payment package) async {
    final appState = ref.read(appProvider);
    final userId = appState.maybeWhen(
      ready: (user) => user.userId,
      orElse: () => null,
    );

    if (userId == null) {
      return null;
    }

    final request = CreatePaymentRequest(
      userId: userId,
      paidPackageId: package.id,
      paidPackageName: package.packageName,
      paidPackageDescription: package.description,
      price: package.price,
      returnUrl: 'sep490mo://app/payment/return',
      cancelUrl: 'sep490mo://app/payment/cancel',
    );
    
    final result = await ref.read(paymentRepositoryProvider).createPayment(request).run();

    return result.fold(
      (failure) {
        return null;
      },
      (url) => url,
    );
  }

  Future<bool> cancelPayment(int paymentId) async {
    final result = await ref.read(paymentRepositoryProvider).cancelPayment(paymentId).run();
    return result.fold(
      (failure) => false,
      (response) => response.success,
    );
  }
}
