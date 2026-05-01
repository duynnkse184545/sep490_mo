// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_questions_management_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(JoinQuestionsManagementController)
final joinQuestionsManagementControllerProvider =
    JoinQuestionsManagementControllerFamily._();

final class JoinQuestionsManagementControllerProvider
    extends
        $AsyncNotifierProvider<
          JoinQuestionsManagementController,
          JoinWithQuestionsState
        > {
  JoinQuestionsManagementControllerProvider._({
    required JoinQuestionsManagementControllerFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'joinQuestionsManagementControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() =>
      _$joinQuestionsManagementControllerHash();

  @override
  String toString() {
    return r'joinQuestionsManagementControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  JoinQuestionsManagementController create() =>
      JoinQuestionsManagementController();

  @override
  bool operator ==(Object other) {
    return other is JoinQuestionsManagementControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$joinQuestionsManagementControllerHash() =>
    r'99d50040632935681fe5486154361b3fc54888be';

final class JoinQuestionsManagementControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          JoinQuestionsManagementController,
          AsyncValue<JoinWithQuestionsState>,
          JoinWithQuestionsState,
          FutureOr<JoinWithQuestionsState>,
          int
        > {
  JoinQuestionsManagementControllerFamily._()
    : super(
        retry: null,
        name: r'joinQuestionsManagementControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  JoinQuestionsManagementControllerProvider call({required int fanHubId}) =>
      JoinQuestionsManagementControllerProvider._(
        argument: fanHubId,
        from: this,
      );

  @override
  String toString() => r'joinQuestionsManagementControllerProvider';
}

abstract class _$JoinQuestionsManagementController
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
