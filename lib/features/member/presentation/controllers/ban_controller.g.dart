// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ban_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BanController)
final banControllerProvider = BanControllerFamily._();

final class BanControllerProvider
    extends $AsyncNotifierProvider<BanController, BanState> {
  BanControllerProvider._({
    required BanControllerFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'banControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$banControllerHash();

  @override
  String toString() {
    return r'banControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  BanController create() => BanController();

  @override
  bool operator ==(Object other) {
    return other is BanControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$banControllerHash() => r'5b982bc85e507c025dba30774d28104a959327fe';

final class BanControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          BanController,
          AsyncValue<BanState>,
          BanState,
          FutureOr<BanState>,
          int
        > {
  BanControllerFamily._()
    : super(
        retry: null,
        name: r'banControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  BanControllerProvider call({required int fanHubId}) =>
      BanControllerProvider._(argument: fanHubId, from: this);

  @override
  String toString() => r'banControllerProvider';
}

abstract class _$BanController extends $AsyncNotifier<BanState> {
  late final _$args = ref.$arg as int;
  int get fanHubId => _$args;

  FutureOr<BanState> build({required int fanHubId});
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<BanState>, BanState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<BanState>, BanState>,
              AsyncValue<BanState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(fanHubId: _$args));
  }
}
