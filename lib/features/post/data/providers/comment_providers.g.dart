// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(commentApiService)
final commentApiServiceProvider = CommentApiServiceProvider._();

final class CommentApiServiceProvider
    extends
        $FunctionalProvider<
          CommentApiService,
          CommentApiService,
          CommentApiService
        >
    with $Provider<CommentApiService> {
  CommentApiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'commentApiServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$commentApiServiceHash();

  @$internal
  @override
  $ProviderElement<CommentApiService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CommentApiService create(Ref ref) {
    return commentApiService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CommentApiService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CommentApiService>(value),
    );
  }
}

String _$commentApiServiceHash() => r'b81516d6c07c3b3b5060c97bd4c0dd2e976b0756';

@ProviderFor(commentRemoteDataSource)
final commentRemoteDataSourceProvider = CommentRemoteDataSourceProvider._();

final class CommentRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          CommentRemoteDataSource,
          CommentRemoteDataSource,
          CommentRemoteDataSource
        >
    with $Provider<CommentRemoteDataSource> {
  CommentRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'commentRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$commentRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<CommentRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CommentRemoteDataSource create(Ref ref) {
    return commentRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CommentRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CommentRemoteDataSource>(value),
    );
  }
}

String _$commentRemoteDataSourceHash() =>
    r'f59734cb0cde404c1ac01086176251a9d1f70848';

@ProviderFor(commentRepository)
final commentRepositoryProvider = CommentRepositoryProvider._();

final class CommentRepositoryProvider
    extends
        $FunctionalProvider<
          CommentRepository,
          CommentRepository,
          CommentRepository
        >
    with $Provider<CommentRepository> {
  CommentRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'commentRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$commentRepositoryHash();

  @$internal
  @override
  $ProviderElement<CommentRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CommentRepository create(Ref ref) {
    return commentRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CommentRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CommentRepository>(value),
    );
  }
}

String _$commentRepositoryHash() => r'4d002b55574cab20fd19d73406b33550216efa4d';
