// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reply_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ReplyController)
final replyControllerProvider = ReplyControllerFamily._();

final class ReplyControllerProvider
    extends $AsyncNotifierProvider<ReplyController, CommentState> {
  ReplyControllerProvider._({
    required ReplyControllerFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'replyControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$replyControllerHash();

  @override
  String toString() {
    return r'replyControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ReplyController create() => ReplyController();

  @override
  bool operator ==(Object other) {
    return other is ReplyControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$replyControllerHash() => r'667900179bdebc27e46a3e6e86dcf8512dd05ba8';

final class ReplyControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          ReplyController,
          AsyncValue<CommentState>,
          CommentState,
          FutureOr<CommentState>,
          int
        > {
  ReplyControllerFamily._()
    : super(
        retry: null,
        name: r'replyControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ReplyControllerProvider call({required int parentCommentId}) =>
      ReplyControllerProvider._(argument: parentCommentId, from: this);

  @override
  String toString() => r'replyControllerProvider';
}

abstract class _$ReplyController extends $AsyncNotifier<CommentState> {
  late final _$args = ref.$arg as int;
  int get parentCommentId => _$args;

  FutureOr<CommentState> build({required int parentCommentId});
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
    element.handleCreate(ref, () => build(parentCommentId: _$args));
  }
}
