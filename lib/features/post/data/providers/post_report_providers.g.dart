// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_report_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(postReportApiService)
final postReportApiServiceProvider = PostReportApiServiceProvider._();

final class PostReportApiServiceProvider
    extends
        $FunctionalProvider<
          PostModerationApiService,
          PostModerationApiService,
          PostModerationApiService
        >
    with $Provider<PostModerationApiService> {
  PostReportApiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'postReportApiServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$postReportApiServiceHash();

  @$internal
  @override
  $ProviderElement<PostModerationApiService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PostModerationApiService create(Ref ref) {
    return postReportApiService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PostModerationApiService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PostModerationApiService>(value),
    );
  }
}

String _$postReportApiServiceHash() =>
    r'ca38b5f3abc15e3e06dcbab1091411c564a38dd5';

@ProviderFor(postReportRemoteDataSource)
final postReportRemoteDataSourceProvider =
    PostReportRemoteDataSourceProvider._();

final class PostReportRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          PostModerationRemoteDatasource,
          PostModerationRemoteDatasource,
          PostModerationRemoteDatasource
        >
    with $Provider<PostModerationRemoteDatasource> {
  PostReportRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'postReportRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$postReportRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<PostModerationRemoteDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PostModerationRemoteDatasource create(Ref ref) {
    return postReportRemoteDataSource(ref);
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

String _$postReportRemoteDataSourceHash() =>
    r'5bdf8193cccce4f04585e83d7f85d6eef3c5dd4e';

@ProviderFor(postReportRepository)
final postReportRepositoryProvider = PostReportRepositoryProvider._();

final class PostReportRepositoryProvider
    extends
        $FunctionalProvider<
          PostModerationRepository,
          PostModerationRepository,
          PostModerationRepository
        >
    with $Provider<PostModerationRepository> {
  PostReportRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'postReportRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$postReportRepositoryHash();

  @$internal
  @override
  $ProviderElement<PostModerationRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PostModerationRepository create(Ref ref) {
    return postReportRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PostModerationRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PostModerationRepository>(value),
    );
  }
}

String _$postReportRepositoryHash() =>
    r'70545af91427d146303eb41f946ea2f33c740754';
