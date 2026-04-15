// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_moderation_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PostModerationController)
final postModerationControllerProvider = PostModerationControllerFamily._();

final class PostModerationControllerProvider
    extends
        $AsyncNotifierProvider<PostModerationController, PostModerationState> {
  PostModerationControllerProvider._({
    required PostModerationControllerFamily super.from,
    required ({String subdomain, int fanHubId, bool pendingOnly})
    super.argument,
  }) : super(
         retry: null,
         name: r'postModerationControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$postModerationControllerHash();

  @override
  String toString() {
    return r'postModerationControllerProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  PostModerationController create() => PostModerationController();

  @override
  bool operator ==(Object other) {
    return other is PostModerationControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$postModerationControllerHash() =>
    r'1b632fb3a1b509fabb6ef9dc390febb1b724a607';

final class PostModerationControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          PostModerationController,
          AsyncValue<PostModerationState>,
          PostModerationState,
          FutureOr<PostModerationState>,
          ({String subdomain, int fanHubId, bool pendingOnly})
        > {
  PostModerationControllerFamily._()
    : super(
        retry: null,
        name: r'postModerationControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PostModerationControllerProvider call({
    required String subdomain,
    required int fanHubId,
    bool pendingOnly = true,
  }) => PostModerationControllerProvider._(
    argument: (
      subdomain: subdomain,
      fanHubId: fanHubId,
      pendingOnly: pendingOnly,
    ),
    from: this,
  );

  @override
  String toString() => r'postModerationControllerProvider';
}

abstract class _$PostModerationController
    extends $AsyncNotifier<PostModerationState> {
  late final _$args =
      ref.$arg as ({String subdomain, int fanHubId, bool pendingOnly});
  String get subdomain => _$args.subdomain;
  int get fanHubId => _$args.fanHubId;
  bool get pendingOnly => _$args.pendingOnly;

  FutureOr<PostModerationState> build({
    required String subdomain,
    required int fanHubId,
    bool pendingOnly = true,
  });
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<PostModerationState>, PostModerationState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<PostModerationState>, PostModerationState>,
              AsyncValue<PostModerationState>,
              Object?,
              Object?
            >;
    element.handleCreate(
      ref,
      () => build(
        subdomain: _$args.subdomain,
        fanHubId: _$args.fanHubId,
        pendingOnly: _$args.pendingOnly,
      ),
    );
  }
}
