// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vtuber_application_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(VtuberApplicationController)
final vtuberApplicationControllerProvider =
    VtuberApplicationControllerProvider._();

final class VtuberApplicationControllerProvider
    extends
        $NotifierProvider<VtuberApplicationController, VtuberApplicationState> {
  VtuberApplicationControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'vtuberApplicationControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$vtuberApplicationControllerHash();

  @$internal
  @override
  VtuberApplicationController create() => VtuberApplicationController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(VtuberApplicationState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<VtuberApplicationState>(value),
    );
  }
}

String _$vtuberApplicationControllerHash() =>
    r'49830ddfd5eb5e0015b83a4486102a76da330008';

abstract class _$VtuberApplicationController
    extends $Notifier<VtuberApplicationState> {
  VtuberApplicationState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<VtuberApplicationState, VtuberApplicationState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<VtuberApplicationState, VtuberApplicationState>,
              VtuberApplicationState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
