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
    r'c14ffbe636e883abfdff813488e710fc5ba4b929';

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

@ProviderFor(userBadges)
final userBadgesProvider = UserBadgesFamily._();

final class UserBadgesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Badge>>,
          List<Badge>,
          FutureOr<List<Badge>>
        >
    with $FutureModifier<List<Badge>>, $FutureProvider<List<Badge>> {
  UserBadgesProvider._({
    required UserBadgesFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'userBadgesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$userBadgesHash();

  @override
  String toString() {
    return r'userBadgesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<Badge>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Badge>> create(Ref ref) {
    final argument = this.argument as int;
    return userBadges(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is UserBadgesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$userBadgesHash() => r'404f30a80117da134a70416887f00f1e773fa931';

final class UserBadgesFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Badge>>, int> {
  UserBadgesFamily._()
    : super(
        retry: null,
        name: r'userBadgesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UserBadgesProvider call(int userId) =>
      UserBadgesProvider._(argument: userId, from: this);

  @override
  String toString() => r'userBadgesProvider';
}

@ProviderFor(availableFrames)
final availableFramesProvider = AvailableFramesProvider._();

final class AvailableFramesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Frame>>,
          List<Frame>,
          FutureOr<List<Frame>>
        >
    with $FutureModifier<List<Frame>>, $FutureProvider<List<Frame>> {
  AvailableFramesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'availableFramesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$availableFramesHash();

  @$internal
  @override
  $FutureProviderElement<List<Frame>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Frame>> create(Ref ref) {
    return availableFrames(ref);
  }
}

String _$availableFramesHash() => r'750b32230971e5c7680b2e2c115a620187cfcb9c';

@ProviderFor(myItems)
final myItemsProvider = MyItemsProvider._();

final class MyItemsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Frame>>,
          List<Frame>,
          FutureOr<List<Frame>>
        >
    with $FutureModifier<List<Frame>>, $FutureProvider<List<Frame>> {
  MyItemsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'myItemsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$myItemsHash();

  @$internal
  @override
  $FutureProviderElement<List<Frame>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Frame>> create(Ref ref) {
    return myItems(ref);
  }
}

String _$myItemsHash() => r'a7219377cde23ecc9f3b5f32153b8194bdc364fa';

@ProviderFor(dailyMission)
final dailyMissionProvider = DailyMissionProvider._();

final class DailyMissionProvider
    extends
        $FunctionalProvider<
          AsyncValue<DailyMission>,
          DailyMission,
          FutureOr<DailyMission>
        >
    with $FutureModifier<DailyMission>, $FutureProvider<DailyMission> {
  DailyMissionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dailyMissionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dailyMissionHash();

  @$internal
  @override
  $FutureProviderElement<DailyMission> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<DailyMission> create(Ref ref) {
    return dailyMission(ref);
  }
}

String _$dailyMissionHash() => r'7af5484b0844a4a3b14d11a36314028e6d34e519';
