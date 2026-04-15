// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_moderation_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(memberModerationApiService)
final memberModerationApiServiceProvider =
    MemberModerationApiServiceProvider._();

final class MemberModerationApiServiceProvider
    extends
        $FunctionalProvider<
          MemberModerationApiService,
          MemberModerationApiService,
          MemberModerationApiService
        >
    with $Provider<MemberModerationApiService> {
  MemberModerationApiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'memberModerationApiServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$memberModerationApiServiceHash();

  @$internal
  @override
  $ProviderElement<MemberModerationApiService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  MemberModerationApiService create(Ref ref) {
    return memberModerationApiService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MemberModerationApiService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MemberModerationApiService>(value),
    );
  }
}

String _$memberModerationApiServiceHash() =>
    r'ff9c5cddefa0d6500a4b58010378b7f9e3909276';

@ProviderFor(memberModerationRemoteDataSource)
final memberModerationRemoteDataSourceProvider =
    MemberModerationRemoteDataSourceProvider._();

final class MemberModerationRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          MemberModerationRemoteDatasource,
          MemberModerationRemoteDatasource,
          MemberModerationRemoteDatasource
        >
    with $Provider<MemberModerationRemoteDatasource> {
  MemberModerationRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'memberModerationRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$memberModerationRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<MemberModerationRemoteDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  MemberModerationRemoteDatasource create(Ref ref) {
    return memberModerationRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MemberModerationRemoteDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MemberModerationRemoteDatasource>(
        value,
      ),
    );
  }
}

String _$memberModerationRemoteDataSourceHash() =>
    r'1e5bf042c0405147dd6c8d659886bcc85ee86c94';

@ProviderFor(memberModerationRepository)
final memberModerationRepositoryProvider =
    MemberModerationRepositoryProvider._();

final class MemberModerationRepositoryProvider
    extends
        $FunctionalProvider<
          MemberModerationRepository,
          MemberModerationRepository,
          MemberModerationRepository
        >
    with $Provider<MemberModerationRepository> {
  MemberModerationRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'memberModerationRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$memberModerationRepositoryHash();

  @$internal
  @override
  $ProviderElement<MemberModerationRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  MemberModerationRepository create(Ref ref) {
    return memberModerationRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MemberModerationRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MemberModerationRepository>(value),
    );
  }
}

String _$memberModerationRepositoryHash() =>
    r'c114e96647d7a98ac6004fa7fd9f151e622037ac';
