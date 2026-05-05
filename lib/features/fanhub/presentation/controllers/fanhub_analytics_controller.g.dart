// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fanhub_analytics_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FanHubAnalyticsController)
final fanHubAnalyticsControllerProvider = FanHubAnalyticsControllerFamily._();

final class FanHubAnalyticsControllerProvider
    extends $AsyncNotifierProvider<FanHubAnalyticsController, FanHubAnalytics> {
  FanHubAnalyticsControllerProvider._({
    required FanHubAnalyticsControllerFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'fanHubAnalyticsControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$fanHubAnalyticsControllerHash();

  @override
  String toString() {
    return r'fanHubAnalyticsControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  FanHubAnalyticsController create() => FanHubAnalyticsController();

  @override
  bool operator ==(Object other) {
    return other is FanHubAnalyticsControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$fanHubAnalyticsControllerHash() =>
    r'36a241deeeea50031510d642561573b10e186314';

final class FanHubAnalyticsControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          FanHubAnalyticsController,
          AsyncValue<FanHubAnalytics>,
          FanHubAnalytics,
          FutureOr<FanHubAnalytics>,
          int
        > {
  FanHubAnalyticsControllerFamily._()
    : super(
        retry: null,
        name: r'fanHubAnalyticsControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FanHubAnalyticsControllerProvider call({required int fanHubId}) =>
      FanHubAnalyticsControllerProvider._(argument: fanHubId, from: this);

  @override
  String toString() => r'fanHubAnalyticsControllerProvider';
}

abstract class _$FanHubAnalyticsController
    extends $AsyncNotifier<FanHubAnalytics> {
  late final _$args = ref.$arg as int;
  int get fanHubId => _$args;

  FutureOr<FanHubAnalytics> build({required int fanHubId});
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<FanHubAnalytics>, FanHubAnalytics>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<FanHubAnalytics>, FanHubAnalytics>,
              AsyncValue<FanHubAnalytics>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(fanHubId: _$args));
  }
}
