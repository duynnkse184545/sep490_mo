// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vtuber_application_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(vtuberApplicationApiService)
final vtuberApplicationApiServiceProvider =
    VtuberApplicationApiServiceProvider._();

final class VtuberApplicationApiServiceProvider
    extends
        $FunctionalProvider<
          VtuberApplicationApiService,
          VtuberApplicationApiService,
          VtuberApplicationApiService
        >
    with $Provider<VtuberApplicationApiService> {
  VtuberApplicationApiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'vtuberApplicationApiServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$vtuberApplicationApiServiceHash();

  @$internal
  @override
  $ProviderElement<VtuberApplicationApiService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  VtuberApplicationApiService create(Ref ref) {
    return vtuberApplicationApiService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(VtuberApplicationApiService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<VtuberApplicationApiService>(value),
    );
  }
}

String _$vtuberApplicationApiServiceHash() =>
    r'6512c328d6c59094a66ad991647692e879cad562';

@ProviderFor(vtuberApplicationRemoteDataSource)
final vtuberApplicationRemoteDataSourceProvider =
    VtuberApplicationRemoteDataSourceProvider._();

final class VtuberApplicationRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          VtuberApplicationRemoteDataSource,
          VtuberApplicationRemoteDataSource,
          VtuberApplicationRemoteDataSource
        >
    with $Provider<VtuberApplicationRemoteDataSource> {
  VtuberApplicationRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'vtuberApplicationRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$vtuberApplicationRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<VtuberApplicationRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  VtuberApplicationRemoteDataSource create(Ref ref) {
    return vtuberApplicationRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(VtuberApplicationRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<VtuberApplicationRemoteDataSource>(
        value,
      ),
    );
  }
}

String _$vtuberApplicationRemoteDataSourceHash() =>
    r'9199059958d45545a250edcb19c6fc832c5da71f';

@ProviderFor(vtuberApplicationRepository)
final vtuberApplicationRepositoryProvider =
    VtuberApplicationRepositoryProvider._();

final class VtuberApplicationRepositoryProvider
    extends
        $FunctionalProvider<
          VtuberApplicationRepository,
          VtuberApplicationRepository,
          VtuberApplicationRepository
        >
    with $Provider<VtuberApplicationRepository> {
  VtuberApplicationRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'vtuberApplicationRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$vtuberApplicationRepositoryHash();

  @$internal
  @override
  $ProviderElement<VtuberApplicationRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  VtuberApplicationRepository create(Ref ref) {
    return vtuberApplicationRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(VtuberApplicationRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<VtuberApplicationRepository>(value),
    );
  }
}

String _$vtuberApplicationRepositoryHash() =>
    r'4bbb7733839a187ad3c8ed1e76405571ef054258';
