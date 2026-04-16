// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CommentController)
final commentControllerProvider = CommentControllerFamily._();

final class CommentControllerProvider
    extends $AsyncNotifierProvider<CommentController, CommentState> {
  CommentControllerProvider._({
    required CommentControllerFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'commentControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$commentControllerHash();

  @override
  String toString() {
    return r'commentControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  CommentController create() => CommentController();

  @override
  bool operator ==(Object other) {
    return other is CommentControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$commentControllerHash() => r'e1105a11f7b849f44d55d0c84061c5ed40be6348';

final class CommentControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          CommentController,
          AsyncValue<CommentState>,
          CommentState,
          FutureOr<CommentState>,
          int
        > {
  CommentControllerFamily._()
    : super(
        retry: null,
        name: r'commentControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CommentControllerProvider call({required int postId}) =>
      CommentControllerProvider._(argument: postId, from: this);

  @override
  String toString() => r'commentControllerProvider';
}

abstract class _$CommentController extends $AsyncNotifier<CommentState> {
  late final _$args = ref.$arg as int;
  int get postId => _$args;

  FutureOr<CommentState> build({required int postId});
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<CommentState>, CommentState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<CommentState>, CommentState>,
              AsyncValue<CommentState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(postId: _$args));
  }
}
