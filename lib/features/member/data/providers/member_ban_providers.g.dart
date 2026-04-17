// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_ban_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(memberBanApiService)
final memberBanApiServiceProvider = MemberBanApiServiceProvider._();

final class MemberBanApiServiceProvider
    extends
        $FunctionalProvider<
          MemberBanApiService,
          MemberBanApiService,
          MemberBanApiService
        >
    with $Provider<MemberBanApiService> {
  MemberBanApiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'memberBanApiServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$memberBanApiServiceHash();

  @$internal
  @override
  $ProviderElement<MemberBanApiService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  MemberBanApiService create(Ref ref) {
    return memberBanApiService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MemberBanApiService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MemberBanApiService>(value),
    );
  }
}

String _$memberBanApiServiceHash() =>
    r'ef9cde6a496a47c7d2a3384e9c848a54fa7798bf';

@ProviderFor(memberBanRemoteDataSource)
final memberBanRemoteDataSourceProvider = MemberBanRemoteDataSourceProvider._();

final class MemberBanRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          MemberBanRemoteDataSource,
          MemberBanRemoteDataSource,
          MemberBanRemoteDataSource
        >
    with $Provider<MemberBanRemoteDataSource> {
  MemberBanRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'memberBanRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$memberBanRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<MemberBanRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  MemberBanRemoteDataSource create(Ref ref) {
    return memberBanRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MemberBanRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MemberBanRemoteDataSource>(value),
    );
  }
}

String _$memberBanRemoteDataSourceHash() =>
    r'1ddf6b3202558221f59b1ffafdcc772b044603ab';

@ProviderFor(memberBanRepository)
final memberBanRepositoryProvider = MemberBanRepositoryProvider._();

final class MemberBanRepositoryProvider
    extends
        $FunctionalProvider<
          MemberBanRepository,
          MemberBanRepository,
          MemberBanRepository
        >
    with $Provider<MemberBanRepository> {
  MemberBanRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'memberBanRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$memberBanRepositoryHash();

  @$internal
  @override
  $ProviderElement<MemberBanRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  MemberBanRepository create(Ref ref) {
    return memberBanRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MemberBanRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MemberBanRepository>(value),
    );
  }
}

String _$memberBanRepositoryHash() =>
    r'1f5a6408084f1981d27ae7f02e998259015f4bc8';
