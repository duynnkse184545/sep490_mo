// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(paymentApiService)
final paymentApiServiceProvider = PaymentApiServiceProvider._();

final class PaymentApiServiceProvider
    extends
        $FunctionalProvider<
          PaymentApiService,
          PaymentApiService,
          PaymentApiService
        >
    with $Provider<PaymentApiService> {
  PaymentApiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'paymentApiServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$paymentApiServiceHash();

  @$internal
  @override
  $ProviderElement<PaymentApiService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PaymentApiService create(Ref ref) {
    return paymentApiService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PaymentApiService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PaymentApiService>(value),
    );
  }
}

String _$paymentApiServiceHash() => r'c2c03172cc4abe5aa8063c3f32b7b0672f49e76a';

@ProviderFor(paymentRemoteDataSource)
final paymentRemoteDataSourceProvider = PaymentRemoteDataSourceProvider._();

final class PaymentRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          PaymentRemoteDataSource,
          PaymentRemoteDataSource,
          PaymentRemoteDataSource
        >
    with $Provider<PaymentRemoteDataSource> {
  PaymentRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'paymentRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$paymentRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<PaymentRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PaymentRemoteDataSource create(Ref ref) {
    return paymentRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PaymentRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PaymentRemoteDataSource>(value),
    );
  }
}

String _$paymentRemoteDataSourceHash() =>
    r'f259dc8f3bb18d14f427309c6faa16adaf89492d';

@ProviderFor(paymentRepository)
final paymentRepositoryProvider = PaymentRepositoryProvider._();

final class PaymentRepositoryProvider
    extends
        $FunctionalProvider<
          PaymentRepository,
          PaymentRepository,
          PaymentRepository
        >
    with $Provider<PaymentRepository> {
  PaymentRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'paymentRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$paymentRepositoryHash();

  @$internal
  @override
  $ProviderElement<PaymentRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PaymentRepository create(Ref ref) {
    return paymentRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PaymentRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PaymentRepository>(value),
    );
  }
}

String _$paymentRepositoryHash() => r'a5fa452f1a3ceaec6556018872fd44f9e49e5b4c';
