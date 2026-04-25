// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_checking_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MemberCheckingController)
final memberCheckingControllerProvider = MemberCheckingControllerFamily._();

final class MemberCheckingControllerProvider
    extends
        $AsyncNotifierProvider<
          MemberCheckingController,
          MemberCheckingResponse
        > {
  MemberCheckingControllerProvider._({
    required MemberCheckingControllerFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'memberCheckingControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$memberCheckingControllerHash();

  @override
  String toString() {
    return r'memberCheckingControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  MemberCheckingController create() => MemberCheckingController();

  @override
  bool operator ==(Object other) {
    return other is MemberCheckingControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$memberCheckingControllerHash() =>
    r'01ac3eca3da38adad43f9d8aba569ec4eae2fe05';

final class MemberCheckingControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          MemberCheckingController,
          AsyncValue<MemberCheckingResponse>,
          MemberCheckingResponse,
          FutureOr<MemberCheckingResponse>,
          int
        > {
  MemberCheckingControllerFamily._()
    : super(
        retry: null,
        name: r'memberCheckingControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MemberCheckingControllerProvider call({required int fanHubId}) =>
      MemberCheckingControllerProvider._(argument: fanHubId, from: this);

  @override
  String toString() => r'memberCheckingControllerProvider';
}

abstract class _$MemberCheckingController
    extends $AsyncNotifier<MemberCheckingResponse> {
  late final _$args = ref.$arg as int;
  int get fanHubId => _$args;

  FutureOr<MemberCheckingResponse> build({required int fanHubId});
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<MemberCheckingResponse>, MemberCheckingResponse>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<MemberCheckingResponse>,
                MemberCheckingResponse
              >,
              AsyncValue<MemberCheckingResponse>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(fanHubId: _$args));
  }
}
