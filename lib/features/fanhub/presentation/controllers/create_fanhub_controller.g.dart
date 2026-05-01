// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_fanhub_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CreateFanHubController)
final createFanHubControllerProvider = CreateFanHubControllerProvider._();

final class CreateFanHubControllerProvider
    extends $NotifierProvider<CreateFanHubController, CreateFanHubState> {
  CreateFanHubControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createFanHubControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createFanHubControllerHash();

  @$internal
  @override
  CreateFanHubController create() => CreateFanHubController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CreateFanHubState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CreateFanHubState>(value),
    );
  }
}

String _$createFanHubControllerHash() =>
    r'fbc15c2c55bfdcc94b76768c2b83699e1e2cd597';

abstract class _$CreateFanHubController extends $Notifier<CreateFanHubState> {
  CreateFanHubState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<CreateFanHubState, CreateFanHubState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CreateFanHubState, CreateFanHubState>,
              CreateFanHubState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
