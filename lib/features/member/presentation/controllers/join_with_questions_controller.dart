import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/features/member/data/models/join_questions_models.dart';
import 'package:sep490_mo/features/member/data/providers/join_with_questions_providers.dart';
import 'package:sep490_mo/features/member/presentation/states/join_with_questions_state.dart';

part 'join_with_questions_controller.g.dart';

@riverpod
class JoinWithQuestionsController extends _$JoinWithQuestionsController {
  @override
  Future<JoinWithQuestionsState> build({required int fanHubId}) async {
    final result = await ref
        .read(joinWithQuestionsRepositoryProvider)
        .getJoinQuestions(fanHubId)
        .run();

    return result.fold(
      (failure) => throw failure,
      (questions) {
        if (questions.isEmpty) {
          return const JoinWithQuestionsState.empty();
        }
        return JoinWithQuestionsState.ready(questions);
      },
    );
  }

  Future<bool> submitAnswers(List<JoinAnswersRequest> answers) async {
    state = const AsyncValue.loading();
    
    final result = await ref
        .read(joinWithQuestionsRepositoryProvider)
        .joinWithAnswers(fanHubId, answers)
        .run();

    return result.fold(
      (failure) {
        state = AsyncValue.error(failure, StackTrace.current);
        return false;
      },
      (_) {
        // Keep current questions in state but marked as success
        // Usually we'd invalidate or return to a ready state
        ref.invalidateSelf();
        return true;
      },
    );
  }
}
