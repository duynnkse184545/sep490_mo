// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(feedApiService)
final feedApiServiceProvider = FeedApiServiceProvider._();

final class FeedApiServiceProvider
    extends $FunctionalProvider<FeedApiService, FeedApiService, FeedApiService>
    with $Provider<FeedApiService> {
  FeedApiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'feedApiServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$feedApiServiceHash();

  @$internal
  @override
  $ProviderElement<FeedApiService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FeedApiService create(Ref ref) {
    return feedApiService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FeedApiService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FeedApiService>(value),
    );
  }
}

String _$feedApiServiceHash() => r'3c34524fadbd16724e0f9cbcabbb1e213370b893';

@ProviderFor(feedRemoteDataSource)
final feedRemoteDataSourceProvider = FeedRemoteDataSourceProvider._();

final class FeedRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          FeedRemoteDatasource,
          FeedRemoteDatasource,
          FeedRemoteDatasource
        >
    with $Provider<FeedRemoteDatasource> {
  FeedRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'feedRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$feedRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<FeedRemoteDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  FeedRemoteDatasource create(Ref ref) {
    return feedRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FeedRemoteDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FeedRemoteDatasource>(value),
    );
  }
}

String _$feedRemoteDataSourceHash() =>
    r'99584e95c0ba62029cdcaed608eec471b789fd0a';

@ProviderFor(feedLocalDataSource)
final feedLocalDataSourceProvider = FeedLocalDataSourceProvider._();

final class FeedLocalDataSourceProvider
    extends
        $FunctionalProvider<
          FeedLocalDataSource,
          FeedLocalDataSource,
          FeedLocalDataSource
        >
    with $Provider<FeedLocalDataSource> {
  FeedLocalDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'feedLocalDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$feedLocalDataSourceHash();

  @$internal
  @override
  $ProviderElement<FeedLocalDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  FeedLocalDataSource create(Ref ref) {
    return feedLocalDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FeedLocalDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FeedLocalDataSource>(value),
    );
  }
}

String _$feedLocalDataSourceHash() =>
    r'd741f490d90ab8cb271f0300dca68be80dd58af6';

@ProviderFor(feedRepository)
final feedRepositoryProvider = FeedRepositoryProvider._();

final class FeedRepositoryProvider
    extends $FunctionalProvider<FeedRepository, FeedRepository, FeedRepository>
    with $Provider<FeedRepository> {
  FeedRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'feedRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$feedRepositoryHash();

  @$internal
  @override
  $ProviderElement<FeedRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FeedRepository create(Ref ref) {
    return feedRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FeedRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FeedRepository>(value),
    );
  }
}

String _$feedRepositoryHash() => r'803e4e2913f4cfb80a5d7a3b66dc38ef097a149d';
