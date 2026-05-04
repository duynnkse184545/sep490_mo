import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/payment/data/models/payment_models.dart';

abstract class PaymentRepository {
  TaskResult<List<Payment>> getPackages();
  TaskResult<CancelPaymentResponse> cancelPayment(int id);
  TaskResult<String> createPayment(CreatePaymentRequest request);
}
