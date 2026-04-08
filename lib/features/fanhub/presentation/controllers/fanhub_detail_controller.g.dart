// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fanhub_detail_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FanHubDetailController)
final fanHubDetailControllerProvider = FanHubDetailControllerFamily._();

final class FanHubDetailControllerProvider
    extends $AsyncNotifierProvider<FanHubDetailController, FanHubDetailState> {
  FanHubDetailControllerProvider._({
    required FanHubDetailControllerFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'fanHubDetailControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$fanHubDetailControllerHash();

  @override
  String toString() {
    return r'fanHubDetailControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  FanHubDetailController create() => FanHubDetailController();

  @override
  bool operator ==(Object other) {
    return other is FanHubDetailControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$fanHubDetailControllerHash() =>
    r'6dfb2541b533e63fb3f94813c81ad0fc249d9c24';

final class FanHubDetailControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          FanHubDetailController,
          AsyncValue<FanHubDetailState>,
          FanHubDetailState,
          FutureOr<FanHubDetailState>,
          String
        > {
  FanHubDetailControllerFamily._()
    : super(
        retry: null,
        name: r'fanHubDetailControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FanHubDetailControllerProvider call({required String subdomain}) =>
      FanHubDetailControllerProvider._(argument: subdomain, from: this);

  @override
  String toString() => r'fanHubDetailControllerProvider';
}

abstract class _$FanHubDetailController
    extends $AsyncNotifier<FanHubDetailState> {
  late final _$args = ref.$arg as String;
  String get subdomain => _$args;

  FutureOr<FanHubDetailState> build({required String subdomain});
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<FanHubDetailState>, FanHubDetailState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<FanHubDetailState>, FanHubDetailState>,
              AsyncValue<FanHubDetailState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(subdomain: _$args));
  }
}
