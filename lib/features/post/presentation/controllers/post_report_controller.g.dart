// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_report_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PostReportController)
final postReportControllerProvider = PostReportControllerFamily._();

final class PostReportControllerProvider
    extends $AsyncNotifierProvider<PostReportController, PostReportState> {
  PostReportControllerProvider._({
    required PostReportControllerFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'postReportControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$postReportControllerHash();

  @override
  String toString() {
    return r'postReportControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  PostReportController create() => PostReportController();

  @override
  bool operator ==(Object other) {
    return other is PostReportControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$postReportControllerHash() =>
    r'939a705cf68dd05fd688cc21d2004ac065d8d7bd';

final class PostReportControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          PostReportController,
          AsyncValue<PostReportState>,
          PostReportState,
          FutureOr<PostReportState>,
          int
        > {
  PostReportControllerFamily._()
    : super(
        retry: null,
        name: r'postReportControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PostReportControllerProvider call({required int fanHubId}) =>
      PostReportControllerProvider._(argument: fanHubId, from: this);

  @override
  String toString() => r'postReportControllerProvider';
}

abstract class _$PostReportController extends $AsyncNotifier<PostReportState> {
  late final _$args = ref.$arg as int;
  int get fanHubId => _$args;

  FutureOr<PostReportState> build({required int fanHubId});
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<PostReportState>, PostReportState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<PostReportState>, PostReportState>,
              AsyncValue<PostReportState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(fanHubId: _$args));
  }
}
