// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(memberApiService)
final memberApiServiceProvider = MemberApiServiceProvider._();

final class MemberApiServiceProvider
    extends
        $FunctionalProvider<
          MemberApiService,
          MemberApiService,
          MemberApiService
        >
    with $Provider<MemberApiService> {
  MemberApiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'memberApiServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$memberApiServiceHash();

  @$internal
  @override
  $ProviderElement<MemberApiService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  MemberApiService create(Ref ref) {
    return memberApiService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MemberApiService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MemberApiService>(value),
    );
  }
}

String _$memberApiServiceHash() => r'3ec83732c3b85e2a19ef7cca3ddb79b1cf59de7a';

@ProviderFor(memberRemoteDataSource)
final memberRemoteDataSourceProvider = MemberRemoteDataSourceProvider._();

final class MemberRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          MemberRemoteDatasource,
          MemberRemoteDatasource,
          MemberRemoteDatasource
        >
    with $Provider<MemberRemoteDatasource> {
  MemberRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'memberRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$memberRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<MemberRemoteDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  MemberRemoteDatasource create(Ref ref) {
    return memberRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MemberRemoteDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MemberRemoteDatasource>(value),
    );
  }
}

String _$memberRemoteDataSourceHash() =>
    r'270c9e8453c635ab507b3c323a4f219f5038addf';

@ProviderFor(memberRepository)
final memberRepositoryProvider = MemberRepositoryProvider._();

final class MemberRepositoryProvider
    extends
        $FunctionalProvider<
          MemberRepository,
          MemberRepository,
          MemberRepository
        >
    with $Provider<MemberRepository> {
  MemberRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'memberRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$memberRepositoryHash();

  @$internal
  @override
  $ProviderElement<MemberRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  MemberRepository create(Ref ref) {
    return memberRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MemberRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MemberRepository>(value),
    );
  }
}

String _$memberRepositoryHash() => r'4b30775021f17bd98e869f374a712836125eab68';
