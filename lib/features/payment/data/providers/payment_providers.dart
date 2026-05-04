import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/core/providers/api_provider.dart';
import 'package:sep490_mo/features/payment/data/datasources/remote/api/payment_api_service.dart';
import 'package:sep490_mo/features/payment/data/datasources/remote/payment_remote_datasource.dart';
import 'package:sep490_mo/features/payment/data/datasources/remote/payment_remote_datasource_impl.dart';
import 'package:sep490_mo/features/payment/data/repositories/payment_repository.dart';
import 'package:sep490_mo/features/payment/data/repositories/payment_repository_impl.dart';

part 'payment_providers.g.dart';

@riverpod
PaymentApiService paymentApiService(Ref ref) {
  return PaymentApiService(ref.watch(apiClientProvider).dio);
}

@riverpod
PaymentRemoteDataSource paymentRemoteDataSource(Ref ref) {
  return PaymentRemoteDataSourceImpl(
    apiService: ref.watch(paymentApiServiceProvider),
  );
}

@riverpod
PaymentRepository paymentRepository(Ref ref) {
  return PaymentRepositoryImpl(
    remoteDataSource: ref.watch(paymentRemoteDataSourceProvider),
  );
}
