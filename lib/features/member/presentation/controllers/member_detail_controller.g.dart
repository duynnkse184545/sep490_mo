// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_detail_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MemberDetailController)
final memberDetailControllerProvider = MemberDetailControllerFamily._();

final class MemberDetailControllerProvider
    extends $AsyncNotifierProvider<MemberDetailController, MemberDetailState> {
  MemberDetailControllerProvider._({
    required MemberDetailControllerFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'memberDetailControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$memberDetailControllerHash();

  @override
  String toString() {
    return r'memberDetailControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  MemberDetailController create() => MemberDetailController();

  @override
  bool operator ==(Object other) {
    return other is MemberDetailControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$memberDetailControllerHash() =>
    r'9b9594c57117608f84f83f3a9722bc89e4e58d7f';

final class MemberDetailControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          MemberDetailController,
          AsyncValue<MemberDetailState>,
          MemberDetailState,
          FutureOr<MemberDetailState>,
          int
        > {
  MemberDetailControllerFamily._()
    : super(
        retry: null,
        name: r'memberDetailControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MemberDetailControllerProvider call({required int fanHubMemberId}) =>
      MemberDetailControllerProvider._(argument: fanHubMemberId, from: this);

  @override
  String toString() => r'memberDetailControllerProvider';
}

abstract class _$MemberDetailController
    extends $AsyncNotifier<MemberDetailState> {
  late final _$args = ref.$arg as int;
  int get fanHubMemberId => _$args;

  FutureOr<MemberDetailState> build({required int fanHubMemberId});
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<MemberDetailState>, MemberDetailState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<MemberDetailState>, MemberDetailState>,
              AsyncValue<MemberDetailState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(fanHubMemberId: _$args));
  }
}
