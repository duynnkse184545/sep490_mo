// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fanhub_owner_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FanHubOwnerController)
final fanHubOwnerControllerProvider = FanHubOwnerControllerProvider._();

final class FanHubOwnerControllerProvider
    extends $AsyncNotifierProvider<FanHubOwnerController, FanHub?> {
  FanHubOwnerControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fanHubOwnerControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fanHubOwnerControllerHash();

  @$internal
  @override
  FanHubOwnerController create() => FanHubOwnerController();
}

String _$fanHubOwnerControllerHash() =>
    r'f59034fa59cc069bb8063981a2b5c11bc868f262';

abstract class _$FanHubOwnerController extends $AsyncNotifier<FanHub?> {
  FutureOr<FanHub?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<FanHub?>, FanHub?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<FanHub?>, FanHub?>,
              AsyncValue<FanHub?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
