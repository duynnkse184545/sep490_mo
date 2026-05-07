// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fanhub_list_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FanHubListController)
final fanHubListControllerProvider = FanHubListControllerFamily._();

final class FanHubListControllerProvider
    extends $AsyncNotifierProvider<FanHubListController, FanHubState> {
  FanHubListControllerProvider._({
    required FanHubListControllerFamily super.from,
    required FanHubTab super.argument,
  }) : super(
         retry: null,
         name: r'fanHubListControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$fanHubListControllerHash();

  @override
  String toString() {
    return r'fanHubListControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  FanHubListController create() => FanHubListController();

  @override
  bool operator ==(Object other) {
    return other is FanHubListControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$fanHubListControllerHash() =>
    r'12a0c3a326c2ae44b91d8ef4e43475bb7cc44994';

final class FanHubListControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          FanHubListController,
          AsyncValue<FanHubState>,
          FanHubState,
          FutureOr<FanHubState>,
          FanHubTab
        > {
  FanHubListControllerFamily._()
    : super(
        retry: null,
        name: r'fanHubListControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FanHubListControllerProvider call(FanHubTab tab) =>
      FanHubListControllerProvider._(argument: tab, from: this);

  @override
  String toString() => r'fanHubListControllerProvider';
}

abstract class _$FanHubListController extends $AsyncNotifier<FanHubState> {
  late final _$args = ref.$arg as FanHubTab;
  FanHubTab get tab => _$args;

  FutureOr<FanHubState> build(FanHubTab tab);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<FanHubState>, FanHubState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<FanHubState>, FanHubState>,
              AsyncValue<FanHubState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
