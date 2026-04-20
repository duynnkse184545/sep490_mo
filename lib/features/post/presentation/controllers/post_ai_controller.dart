import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/features/post/data/providers/post_providers.dart';
import 'package:sep490_mo/features/post/presentation/states/post_ai_state.dart';

part 'post_ai_controller.g.dart';

@riverpod
class PostAIController extends _$PostAIController {
  @override
  PostAIState build({required int postId}) {
    return const PostAIState.idle();
  }

  Future<void> summarize() async {
    state = const PostAIState.loading();
    
    final result = await ref.read(postRepositoryProvider).getSummary(postId).run();
    
    state = result.fold(
      (failure) => PostAIState.error(failure.message),
      (summary) => PostAIState.summarized(summary),
    );
  }

  Future<void> translate() async {
    state = const PostAIState.loading();
    
    final result = await ref.read(postRepositoryProvider).getTranslation(postId).run();
    
    state = result.fold(
      (failure) => PostAIState.error(failure.message),
      (translation) => PostAIState.translated(translation),
    );
  }

  void reset() {
    state = const PostAIState.idle();
  }
}
