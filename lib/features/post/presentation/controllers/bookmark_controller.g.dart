// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmark_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BookmarkController)
final bookmarkControllerProvider = BookmarkControllerProvider._();

final class BookmarkControllerProvider
    extends $AsyncNotifierProvider<BookmarkController, BookmarkState> {
  BookmarkControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'bookmarkControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$bookmarkControllerHash();

  @$internal
  @override
  BookmarkController create() => BookmarkController();
}

String _$bookmarkControllerHash() =>
    r'f54d177dc95f2a13f4cf2a0e77c2f699127efdb5';

abstract class _$BookmarkController extends $AsyncNotifier<BookmarkState> {
  FutureOr<BookmarkState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<BookmarkState>, BookmarkState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<BookmarkState>, BookmarkState>,
              AsyncValue<BookmarkState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
