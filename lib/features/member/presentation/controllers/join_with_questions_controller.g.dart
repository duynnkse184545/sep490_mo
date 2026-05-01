// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_with_questions_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(JoinWithQuestionsController)
final joinWithQuestionsControllerProvider =
    JoinWithQuestionsControllerFamily._();

final class JoinWithQuestionsControllerProvider
    extends
        $AsyncNotifierProvider<
          JoinWithQuestionsController,
          JoinWithQuestionsState
        > {
  JoinWithQuestionsControllerProvider._({
    required JoinWithQuestionsControllerFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'joinWithQuestionsControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$joinWithQuestionsControllerHash();

  @override
  String toString() {
    return r'joinWithQuestionsControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  JoinWithQuestionsController create() => JoinWithQuestionsController();

  @override
  bool operator ==(Object other) {
    return other is JoinWithQuestionsControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$joinWithQuestionsControllerHash() =>
    r'7039800e9fbfb8e7af20f5a011d39c3946649d3f';

final class JoinWithQuestionsControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          JoinWithQuestionsController,
          AsyncValue<JoinWithQuestionsState>,
          JoinWithQuestionsState,
          FutureOr<JoinWithQuestionsState>,
          int
        > {
  JoinWithQuestionsControllerFamily._()
    : super(
        retry: null,
        name: r'joinWithQuestionsControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  JoinWithQuestionsControllerProvider call({required int fanHubId}) =>
      JoinWithQuestionsControllerProvider._(argument: fanHubId, from: this);

  @override
  String toString() => r'joinWithQuestionsControllerProvider';
}

abstract class _$JoinWithQuestionsController
    extends $AsyncNotifier<JoinWithQuestionsState> {
  late final _$args = ref.$arg as int;
  int get fanHubId => _$args;

  FutureOr<JoinWithQuestionsState> build({required int fanHubId});
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<JoinWithQuestionsState>, JoinWithQuestionsState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<JoinWithQuestionsState>,
                JoinWithQuestionsState
              >,
              AsyncValue<JoinWithQuestionsState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(fanHubId: _$args));
  }
}
