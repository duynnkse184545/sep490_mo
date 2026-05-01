// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_with_questions_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(joinWithQuestionsApiService)
final joinWithQuestionsApiServiceProvider =
    JoinWithQuestionsApiServiceProvider._();

final class JoinWithQuestionsApiServiceProvider
    extends
        $FunctionalProvider<
          JoinWithQuestionsApiService,
          JoinWithQuestionsApiService,
          JoinWithQuestionsApiService
        >
    with $Provider<JoinWithQuestionsApiService> {
  JoinWithQuestionsApiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'joinWithQuestionsApiServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$joinWithQuestionsApiServiceHash();

  @$internal
  @override
  $ProviderElement<JoinWithQuestionsApiService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  JoinWithQuestionsApiService create(Ref ref) {
    return joinWithQuestionsApiService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(JoinWithQuestionsApiService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<JoinWithQuestionsApiService>(value),
    );
  }
}

String _$joinWithQuestionsApiServiceHash() =>
    r'1e7beeef745c9c45b4b13c6c076e85ed8d2165f9';

@ProviderFor(joinWithQuestionsRemoteDataSource)
final joinWithQuestionsRemoteDataSourceProvider =
    JoinWithQuestionsRemoteDataSourceProvider._();

final class JoinWithQuestionsRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          JoinWithQuestionsRemoteDataSource,
          JoinWithQuestionsRemoteDataSource,
          JoinWithQuestionsRemoteDataSource
        >
    with $Provider<JoinWithQuestionsRemoteDataSource> {
  JoinWithQuestionsRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'joinWithQuestionsRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$joinWithQuestionsRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<JoinWithQuestionsRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  JoinWithQuestionsRemoteDataSource create(Ref ref) {
    return joinWithQuestionsRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(JoinWithQuestionsRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<JoinWithQuestionsRemoteDataSource>(
        value,
      ),
    );
  }
}

String _$joinWithQuestionsRemoteDataSourceHash() =>
    r'314fdbb7ce6e1674c8649f7258b9695b8cbd1632';

@ProviderFor(joinWithQuestionsRepository)
final joinWithQuestionsRepositoryProvider =
    JoinWithQuestionsRepositoryProvider._();

final class JoinWithQuestionsRepositoryProvider
    extends
        $FunctionalProvider<
          JoinWithQuestionsRepository,
          JoinWithQuestionsRepository,
          JoinWithQuestionsRepository
        >
    with $Provider<JoinWithQuestionsRepository> {
  JoinWithQuestionsRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'joinWithQuestionsRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$joinWithQuestionsRepositoryHash();

  @$internal
  @override
  $ProviderElement<JoinWithQuestionsRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  JoinWithQuestionsRepository create(Ref ref) {
    return joinWithQuestionsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(JoinWithQuestionsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<JoinWithQuestionsRepository>(value),
    );
  }
}

String _$joinWithQuestionsRepositoryHash() =>
    r'76e4c71701a827713df4a966ec503ed366d68f53';
