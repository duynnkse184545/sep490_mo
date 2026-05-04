import 'package:sep490_mo/features/payment/data/models/payment_models.dart';

abstract class PaymentRemoteDataSource {
  Future<List<Payment>> getPackages();
  Future<CancelPaymentResponse> cancelPayment(int id);
  Future<String> createPayment(CreatePaymentRequest request);
}
