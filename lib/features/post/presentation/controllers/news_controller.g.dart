// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NewsController)
final newsControllerProvider = NewsControllerProvider._();

final class NewsControllerProvider
    extends $AsyncNotifierProvider<NewsController, NewsState> {
  NewsControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'newsControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$newsControllerHash();

  @$internal
  @override
  NewsController create() => NewsController();
}

String _$newsControllerHash() => r'05d6453df0b85336e78b0d7c6135f13b424f2d8c';

abstract class _$NewsController extends $AsyncNotifier<NewsState> {
  FutureOr<NewsState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<NewsState>, NewsState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<NewsState>, NewsState>,
              AsyncValue<NewsState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
