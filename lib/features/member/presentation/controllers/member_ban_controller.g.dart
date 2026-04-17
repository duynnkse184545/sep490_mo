// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_ban_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MemberBanController)
final memberBanControllerProvider = MemberBanControllerFamily._();

final class MemberBanControllerProvider
    extends $AsyncNotifierProvider<MemberBanController, MemberBanState> {
  MemberBanControllerProvider._({
    required MemberBanControllerFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'memberBanControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$memberBanControllerHash();

  @override
  String toString() {
    return r'memberBanControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  MemberBanController create() => MemberBanController();

  @override
  bool operator ==(Object other) {
    return other is MemberBanControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$memberBanControllerHash() =>
    r'b41eb1ec88f656785935ffe04164094242790efc';

final class MemberBanControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          MemberBanController,
          AsyncValue<MemberBanState>,
          MemberBanState,
          FutureOr<MemberBanState>,
          int
        > {
  MemberBanControllerFamily._()
    : super(
        retry: null,
        name: r'memberBanControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MemberBanControllerProvider call({required int fanHubId}) =>
      MemberBanControllerProvider._(argument: fanHubId, from: this);

  @override
  String toString() => r'memberBanControllerProvider';
}

abstract class _$MemberBanController extends $AsyncNotifier<MemberBanState> {
  late final _$args = ref.$arg as int;
  int get fanHubId => _$args;

  FutureOr<MemberBanState> build({required int fanHubId});
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<MemberBanState>, MemberBanState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<MemberBanState>, MemberBanState>,
              AsyncValue<MemberBanState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(fanHubId: _$args));
  }
}
