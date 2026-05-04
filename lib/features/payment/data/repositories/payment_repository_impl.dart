import 'package:sep490_mo/core/error/error_handler.dart';
import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/payment/data/datasources/remote/payment_remote_datasource.dart';
import 'package:sep490_mo/features/payment/data/models/payment_models.dart';
import 'package:sep490_mo/features/payment/data/repositories/payment_repository.dart';

class PaymentRepositoryImpl implements PaymentRepository {
  final PaymentRemoteDataSource _remoteDataSource;

  PaymentRepositoryImpl({required PaymentRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  @override
  TaskResult<List<Payment>> getPackages() {
    return ErrorHandler.execute(() async {
      return await _remoteDataSource.getPackages();
    });
  }

  @override
  TaskResult<CancelPaymentResponse> cancelPayment(int id) {
    return ErrorHandler.execute(() async {
      return await _remoteDataSource.cancelPayment(id);
    });
  }

  @override
  TaskResult<String> createPayment(CreatePaymentRequest request) {
    return ErrorHandler.execute(() async {
      return await _remoteDataSource.createPayment(request);
    });
  }
}
