// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_moderation_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MemberModerationController)
final memberModerationControllerProvider = MemberModerationControllerFamily._();

final class MemberModerationControllerProvider
    extends
        $AsyncNotifierProvider<
          MemberModerationController,
          MemberModerationState
        > {
  MemberModerationControllerProvider._({
    required MemberModerationControllerFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'memberModerationControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$memberModerationControllerHash();

  @override
  String toString() {
    return r'memberModerationControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  MemberModerationController create() => MemberModerationController();

  @override
  bool operator ==(Object other) {
    return other is MemberModerationControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$memberModerationControllerHash() =>
    r'cfc085b4beba0ab1a26d6511b54356391180e5c5';

final class MemberModerationControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          MemberModerationController,
          AsyncValue<MemberModerationState>,
          MemberModerationState,
          FutureOr<MemberModerationState>,
          int
        > {
  MemberModerationControllerFamily._()
    : super(
        retry: null,
        name: r'memberModerationControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MemberModerationControllerProvider call({required int fanHubId}) =>
      MemberModerationControllerProvider._(argument: fanHubId, from: this);

  @override
  String toString() => r'memberModerationControllerProvider';
}

abstract class _$MemberModerationController
    extends $AsyncNotifier<MemberModerationState> {
  late final _$args = ref.$arg as int;
  int get fanHubId => _$args;

  FutureOr<MemberModerationState> build({required int fanHubId});
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<MemberModerationState>, MemberModerationState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<MemberModerationState>,
                MemberModerationState
              >,
              AsyncValue<MemberModerationState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(fanHubId: _$args));
  }
}
