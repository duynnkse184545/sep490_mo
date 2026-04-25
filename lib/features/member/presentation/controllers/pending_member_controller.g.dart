// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pending_member_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PendingMemberController)
final pendingMemberControllerProvider = PendingMemberControllerFamily._();

final class PendingMemberControllerProvider
    extends
        $AsyncNotifierProvider<PendingMemberController, PendingMemberState> {
  PendingMemberControllerProvider._({
    required PendingMemberControllerFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'pendingMemberControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$pendingMemberControllerHash();

  @override
  String toString() {
    return r'pendingMemberControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  PendingMemberController create() => PendingMemberController();

  @override
  bool operator ==(Object other) {
    return other is PendingMemberControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$pendingMemberControllerHash() =>
    r'c7578a9bf594777d8e48e546bf21fd84815de2b0';

final class PendingMemberControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          PendingMemberController,
          AsyncValue<PendingMemberState>,
          PendingMemberState,
          FutureOr<PendingMemberState>,
          int
        > {
  PendingMemberControllerFamily._()
    : super(
        retry: null,
        name: r'pendingMemberControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PendingMemberControllerProvider call({required int fanHubId}) =>
      PendingMemberControllerProvider._(argument: fanHubId, from: this);

  @override
  String toString() => r'pendingMemberControllerProvider';
}

abstract class _$PendingMemberController
    extends $AsyncNotifier<PendingMemberState> {
  late final _$args = ref.$arg as int;
  int get fanHubId => _$args;

  FutureOr<PendingMemberState> build({required int fanHubId});
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<PendingMemberState>, PendingMemberState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<PendingMemberState>, PendingMemberState>,
              AsyncValue<PendingMemberState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(fanHubId: _$args));
  }
}
