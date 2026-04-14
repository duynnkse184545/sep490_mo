// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_moderation_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(postModerationApiService)
final postModerationApiServiceProvider = PostModerationApiServiceProvider._();

final class PostModerationApiServiceProvider
    extends
        $FunctionalProvider<
          PostModerationApiService,
          PostModerationApiService,
          PostModerationApiService
        >
    with $Provider<PostModerationApiService> {
  PostModerationApiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'postModerationApiServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$postModerationApiServiceHash();

  @$internal
  @override
  $ProviderElement<PostModerationApiService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PostModerationApiService create(Ref ref) {
    return postModerationApiService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PostModerationApiService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PostModerationApiService>(value),
    );
  }
}

String _$postModerationApiServiceHash() =>
    r'123d51ac44c8decb82b06940b9b46c8a2b91eff3';

@ProviderFor(postModerationRemoteDataSource)
final postModerationRemoteDataSourceProvider =
    PostModerationRemoteDataSourceProvider._();

final class PostModerationRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          PostModerationRemoteDatasource,
          PostModerationRemoteDatasource,
          PostModerationRemoteDatasource
        >
    with $Provider<PostModerationRemoteDatasource> {
  PostModerationRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'postModerationRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$postModerationRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<PostModerationRemoteDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PostModerationRemoteDatasource create(Ref ref) {
    return postModerationRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PostModerationRemoteDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PostModerationRemoteDatasource>(
        value,
      ),
    );
  }
}

String _$postModerationRemoteDataSourceHash() =>
    r'0675a951fc2f1581438ccbf37fff255f0fc2cb1a';

@ProviderFor(postModerationRepository)
final postModerationRepositoryProvider = PostModerationRepositoryProvider._();

final class PostModerationRepositoryProvider
    extends
        $FunctionalProvider<
          PostModerationRepository,
          PostModerationRepository,
          PostModerationRepository
        >
    with $Provider<PostModerationRepository> {
  PostModerationRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'postModerationRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$postModerationRepositoryHash();

  @$internal
  @override
  $ProviderElement<PostModerationRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PostModerationRepository create(Ref ref) {
    return postModerationRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PostModerationRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PostModerationRepository>(value),
    );
  }
}

String _$postModerationRepositoryHash() =>
    r'6562d8d617fd209e56d3251e53dbeefdf1d69c81';
