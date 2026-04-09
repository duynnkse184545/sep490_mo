// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(postApiService)
final postApiServiceProvider = PostApiServiceProvider._();

final class PostApiServiceProvider
    extends $FunctionalProvider<PostApiService, PostApiService, PostApiService>
    with $Provider<PostApiService> {
  PostApiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'postApiServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$postApiServiceHash();

  @$internal
  @override
  $ProviderElement<PostApiService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  PostApiService create(Ref ref) {
    return postApiService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PostApiService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PostApiService>(value),
    );
  }
}

String _$postApiServiceHash() => r'98f6a597296fbc3c24c404dc83c4b84a684ddb26';

@ProviderFor(postRemoteDataSource)
final postRemoteDataSourceProvider = PostRemoteDataSourceProvider._();

final class PostRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          PostRemoteDatasource,
          PostRemoteDatasource,
          PostRemoteDatasource
        >
    with $Provider<PostRemoteDatasource> {
  PostRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'postRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$postRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<PostRemoteDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PostRemoteDatasource create(Ref ref) {
    return postRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PostRemoteDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PostRemoteDatasource>(value),
    );
  }
}

String _$postRemoteDataSourceHash() =>
    r'a6df463fb09083aabee76bcb74a5a24b002117aa';

@ProviderFor(postRepository)
final postRepositoryProvider = PostRepositoryProvider._();

final class PostRepositoryProvider
    extends $FunctionalProvider<PostRepository, PostRepository, PostRepository>
    with $Provider<PostRepository> {
  PostRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'postRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$postRepositoryHash();

  @$internal
  @override
  $ProviderElement<PostRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  PostRepository create(Ref ref) {
    return postRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PostRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PostRepository>(value),
    );
  }
}

String _$postRepositoryHash() => r'68e0f880a41ed60975542e9b8bdf1334d7156862';
