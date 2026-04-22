// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ShopController)
final shopControllerProvider = ShopControllerProvider._();

final class ShopControllerProvider
    extends $AsyncNotifierProvider<ShopController, ShopState> {
  ShopControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'shopControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$shopControllerHash();

  @$internal
  @override
  ShopController create() => ShopController();
}

String _$shopControllerHash() => r'6b312fc8ad2162b129a255d6f8329ad6f6c9034f';

abstract class _$ShopController extends $AsyncNotifier<ShopState> {
  FutureOr<ShopState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<ShopState>, ShopState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ShopState>, ShopState>,
              AsyncValue<ShopState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
