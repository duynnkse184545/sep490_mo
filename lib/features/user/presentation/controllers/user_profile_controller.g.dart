// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UserProfileController)
final userProfileControllerProvider = UserProfileControllerProvider._();

final class UserProfileControllerProvider
    extends $AsyncNotifierProvider<UserProfileController, UserProfileState> {
  UserProfileControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userProfileControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userProfileControllerHash();

  @$internal
  @override
  UserProfileController create() => UserProfileController();
}

String _$userProfileControllerHash() =>
    r'bb17d8bd22a4b31ce2ecf848c0e36ec1984a45b0';

abstract class _$UserProfileController
    extends $AsyncNotifier<UserProfileState> {
  FutureOr<UserProfileState> build();
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
    element.handleCreate(ref, build);
  }
}
