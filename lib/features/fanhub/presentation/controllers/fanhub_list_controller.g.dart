// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fanhub_list_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FanHubListController)
final fanHubListControllerProvider = FanHubListControllerProvider._();

final class FanHubListControllerProvider
    extends $AsyncNotifierProvider<FanHubListController, FanHubState> {
  FanHubListControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fanHubListControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fanHubListControllerHash();

  @$internal
  @override
  FanHubListController create() => FanHubListController();
}

String _$fanHubListControllerHash() =>
    r'5fab72cdbeb0bb48e0b948030968a1ed08f3f63b';

abstract class _$FanHubListController extends $AsyncNotifier<FanHubState> {
  FutureOr<FanHubState> build();
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
    element.handleCreate(ref, build);
  }
}
