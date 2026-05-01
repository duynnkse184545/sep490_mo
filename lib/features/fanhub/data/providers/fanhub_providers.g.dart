// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fanhub_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(fanHubApiService)
final fanHubApiServiceProvider = FanHubApiServiceProvider._();

final class FanHubApiServiceProvider
    extends
        $FunctionalProvider<
          FanHubApiService,
          FanHubApiService,
          FanHubApiService
        >
    with $Provider<FanHubApiService> {
  FanHubApiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fanHubApiServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fanHubApiServiceHash();

  @$internal
  @override
  $ProviderElement<FanHubApiService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FanHubApiService create(Ref ref) {
    return fanHubApiService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FanHubApiService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FanHubApiService>(value),
    );
  }
}

String _$fanHubApiServiceHash() => r'81c86e7a220cd68592fd68918421ffe46b5c160c';

@ProviderFor(fanHubRemoteDataSource)
final fanHubRemoteDataSourceProvider = FanHubRemoteDataSourceProvider._();

final class FanHubRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          FanHubRemoteDataSource,
          FanHubRemoteDataSource,
          FanHubRemoteDataSource
        >
    with $Provider<FanHubRemoteDataSource> {
  FanHubRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fanHubRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fanHubRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<FanHubRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  FanHubRemoteDataSource create(Ref ref) {
    return fanHubRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FanHubRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FanHubRemoteDataSource>(value),
    );
  }
}

String _$fanHubRemoteDataSourceHash() =>
    r'c1427ed069fce9d11156ba7286f145b687a27eb5';

@ProviderFor(fanHubRepository)
final fanHubRepositoryProvider = FanHubRepositoryProvider._();

final class FanHubRepositoryProvider
    extends
        $FunctionalProvider<
          FanHubRepository,
          FanHubRepository,
          FanHubRepository
        >
    with $Provider<FanHubRepository> {
  FanHubRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fanHubRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fanHubRepositoryHash();

  @$internal
  @override
  $ProviderElement<FanHubRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FanHubRepository create(Ref ref) {
    return fanHubRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FanHubRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FanHubRepository>(value),
    );
  }
}

String _$fanHubRepositoryHash() => r'21e021434ea3ed899fcf9912d2cc752f5c7d1f45';
