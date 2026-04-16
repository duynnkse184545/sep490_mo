// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ban_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(banApiService)
final banApiServiceProvider = BanApiServiceProvider._();

final class BanApiServiceProvider
    extends $FunctionalProvider<BanApiService, BanApiService, BanApiService>
    with $Provider<BanApiService> {
  BanApiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'banApiServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$banApiServiceHash();

  @$internal
  @override
  $ProviderElement<BanApiService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  BanApiService create(Ref ref) {
    return banApiService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BanApiService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BanApiService>(value),
    );
  }
}

String _$banApiServiceHash() => r'08baa35a55c9aeb959e455aa9f364a64516627ec';

@ProviderFor(banRemoteDataSource)
final banRemoteDataSourceProvider = BanRemoteDataSourceProvider._();

final class BanRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          BanRemoteDataSource,
          BanRemoteDataSource,
          BanRemoteDataSource
        >
    with $Provider<BanRemoteDataSource> {
  BanRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'banRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$banRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<BanRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  BanRemoteDataSource create(Ref ref) {
    return banRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BanRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BanRemoteDataSource>(value),
    );
  }
}

String _$banRemoteDataSourceHash() =>
    r'7db763a08a9ea6f3efb1e2c7701b8c91e72980da';

@ProviderFor(banRepository)
final banRepositoryProvider = BanRepositoryProvider._();

final class BanRepositoryProvider
    extends $FunctionalProvider<BanRepository, BanRepository, BanRepository>
    with $Provider<BanRepository> {
  BanRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'banRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$banRepositoryHash();

  @$internal
  @override
  $ProviderElement<BanRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  BanRepository create(Ref ref) {
    return banRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BanRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BanRepository>(value),
    );
  }
}

String _$banRepositoryHash() => r'dfc3b6fbd7725f8c4e17a04c90279800efaf803f';
