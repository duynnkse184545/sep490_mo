import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';
import 'package:sep490_mo/features/post/data/providers/post_providers.dart';
import 'package:sep490_mo/features/post/presentation/states/create_post_state.dart';

part 'create_post_controller.g.dart';

@riverpod
class CreatePostController extends _$CreatePostController {
  @override
  CreatePostState build() {
    return const CreatePostState.initial();
  }

  Future<void> createPost({
    required int fanHubId,
    required PostType postType,
    String? title,
    required String content,
    List<String>? images,
    List<String>? hashtags,
    String? video,
    bool isAnnouncement = false,
    bool isSchedule = false,
  }) async {
    state = const CreatePostState.loading();

    final request = CreatePostRequest(
      fanHubId: fanHubId,
      postType: postType,
      title: title,
      content: content,
      hashtags: hashtags ?? [],
      isAnnouncement: isAnnouncement,
      isSchedule: isSchedule,
    );

    final result = await ref
        .read(postRepositoryProvider)
        .createPost(
          request,
          imagePaths: images,
          videoPath: video,
        )
        .run();

    result.fold(
      (failure) => state = CreatePostState.error(failure.message),
      (_) => state = const CreatePostState.success(),
    );
  }

  Future<void> createPoll(PollRequest request) async {
    state = const CreatePostState.loading();

    final result = await ref
        .read(postRepositoryProvider)
        .createPoll(request)
        .run();

    result.fold(
      (failure) => state = CreatePostState.error(failure.message),
      (_) => state = const CreatePostState.success(),
    );
  }

  void reset() {
    state = const CreatePostState.initial();
  }
}
