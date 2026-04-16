// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_list_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MemberListController)
final memberListControllerProvider = MemberListControllerFamily._();

final class MemberListControllerProvider
    extends $AsyncNotifierProvider<MemberListController, MemberListState> {
  MemberListControllerProvider._({
    required MemberListControllerFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'memberListControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$memberListControllerHash();

  @override
  String toString() {
    return r'memberListControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  MemberListController create() => MemberListController();

  @override
  bool operator ==(Object other) {
    return other is MemberListControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$memberListControllerHash() =>
    r'4e4b8491a5ec48f843ebd62b2b38cd7689b97918';

final class MemberListControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          MemberListController,
          AsyncValue<MemberListState>,
          MemberListState,
          FutureOr<MemberListState>,
          int
        > {
  MemberListControllerFamily._()
    : super(
        retry: null,
        name: r'memberListControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MemberListControllerProvider call({required int fanHubId}) =>
      MemberListControllerProvider._(argument: fanHubId, from: this);

  @override
  String toString() => r'memberListControllerProvider';
}

abstract class _$MemberListController extends $AsyncNotifier<MemberListState> {
  late final _$args = ref.$arg as int;
  int get fanHubId => _$args;

  FutureOr<MemberListState> build({required int fanHubId});
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<MemberListState>, MemberListState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<MemberListState>, MemberListState>,
              AsyncValue<MemberListState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(fanHubId: _$args));
  }
}
