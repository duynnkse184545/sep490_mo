// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UserProfileController)
final userProfileControllerProvider = UserProfileControllerFamily._();

final class UserProfileControllerProvider
    extends $AsyncNotifierProvider<UserProfileController, UserProfileState> {
  UserProfileControllerProvider._({
    required UserProfileControllerFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'userProfileControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$userProfileControllerHash();

  @override
  String toString() {
    return r'userProfileControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  UserProfileController create() => UserProfileController();

  @override
  bool operator ==(Object other) {
    return other is UserProfileControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$userProfileControllerHash() =>
    r'9366b1f50b56bf749181f14b2ebc6eba35f7e9a5';

final class UserProfileControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          UserProfileController,
          AsyncValue<UserProfileState>,
          UserProfileState,
          FutureOr<UserProfileState>,
          int
        > {
  UserProfileControllerFamily._()
    : super(
        retry: null,
        name: r'userProfileControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UserProfileControllerProvider call({required int userId}) =>
      UserProfileControllerProvider._(argument: userId, from: this);

  @override
  String toString() => r'userProfileControllerProvider';
}

abstract class _$UserProfileController
    extends $AsyncNotifier<UserProfileState> {
  late final _$args = ref.$arg as int;
  int get userId => _$args;

  FutureOr<UserProfileState> build({required int userId});
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<UserProfileState>, UserProfileState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<UserProfileState>, UserProfileState>,
              AsyncValue<UserProfileState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(userId: _$args));
  }
}
