// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_ai_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PostAIController)
final postAIControllerProvider = PostAIControllerFamily._();

final class PostAIControllerProvider
    extends $NotifierProvider<PostAIController, PostAIState> {
  PostAIControllerProvider._({
    required PostAIControllerFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'postAIControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$postAIControllerHash();

  @override
  String toString() {
    return r'postAIControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  PostAIController create() => PostAIController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PostAIState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PostAIState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is PostAIControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$postAIControllerHash() => r'5b59b87cf9ec9ad9c0f10c687c2b1f822e4ef518';

final class PostAIControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          PostAIController,
          PostAIState,
          PostAIState,
          PostAIState,
          int
        > {
  PostAIControllerFamily._()
    : super(
        retry: null,
        name: r'postAIControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PostAIControllerProvider call({required int postId}) =>
      PostAIControllerProvider._(argument: postId, from: this);

  @override
  String toString() => r'postAIControllerProvider';
}

abstract class _$PostAIController extends $Notifier<PostAIState> {
  late final _$args = ref.$arg as int;
  int get postId => _$args;

  PostAIState build({required int postId});
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<PostAIState, PostAIState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PostAIState, PostAIState>,
              PostAIState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(postId: _$args));
  }
}
