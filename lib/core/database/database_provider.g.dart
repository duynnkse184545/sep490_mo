// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appDatabase)
final appDatabaseProvider = AppDatabaseProvider._();

final class AppDatabaseProvider
    extends $FunctionalProvider<AppDatabase, AppDatabase, AppDatabase>
    with $Provider<AppDatabase> {
  AppDatabaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appDatabaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appDatabaseHash();

  @$internal
  @override
  $ProviderElement<AppDatabase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AppDatabase create(Ref ref) {
    return appDatabase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppDatabase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppDatabase>(value),
    );
  }
}

String _$appDatabaseHash() => r'448adad5717e7b1c0b3ca3ca7e03d0b2116237af';

@ProviderFor(userDao)
final userDaoProvider = UserDaoProvider._();

final class UserDaoProvider
    extends $FunctionalProvider<UserDao, UserDao, UserDao>
    with $Provider<UserDao> {
  UserDaoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userDaoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userDaoHash();

  @$internal
  @override
  $ProviderElement<UserDao> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  UserDao create(Ref ref) {
    return userDao(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UserDao value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UserDao>(value),
    );
  }
}

String _$userDaoHash() => r'32ffb180aaa702f4c76d9af57a7a2902d97f9d76';

@ProviderFor(postDao)
final postDaoProvider = PostDaoProvider._();

final class PostDaoProvider
    extends $FunctionalProvider<PostDao, PostDao, PostDao>
    with $Provider<PostDao> {
  PostDaoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'postDaoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$postDaoHash();

  @$internal
  @override
  $ProviderElement<PostDao> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  PostDao create(Ref ref) {
    return postDao(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PostDao value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PostDao>(value),
    );
  }
}

String _$postDaoHash() => r'5319007eb418b32774c450a1723c0c43096902b9';
