// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hub_feed_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(HubFeedController)
final hubFeedControllerProvider = HubFeedControllerFamily._();

final class HubFeedControllerProvider
    extends $AsyncNotifierProvider<HubFeedController, FeedState> {
  HubFeedControllerProvider._({
    required HubFeedControllerFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'hubFeedControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$hubFeedControllerHash();

  @override
  String toString() {
    return r'hubFeedControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  HubFeedController create() => HubFeedController();

  @override
  bool operator ==(Object other) {
    return other is HubFeedControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$hubFeedControllerHash() => r'f6c20b84a5c9579afce04cbecb141f1367f2b5fa';

final class HubFeedControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          HubFeedController,
          AsyncValue<FeedState>,
          FeedState,
          FutureOr<FeedState>,
          String
        > {
  HubFeedControllerFamily._()
    : super(
        retry: null,
        name: r'hubFeedControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  HubFeedControllerProvider call({required String subdomain}) =>
      HubFeedControllerProvider._(argument: subdomain, from: this);

  @override
  String toString() => r'hubFeedControllerProvider';
}

abstract class _$HubFeedController extends $AsyncNotifier<FeedState> {
  late final _$args = ref.$arg as String;
  String get subdomain => _$args;

  FutureOr<FeedState> build({required String subdomain});
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<FeedState>, FeedState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<FeedState>, FeedState>,
              AsyncValue<FeedState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(subdomain: _$args));
  }
}
