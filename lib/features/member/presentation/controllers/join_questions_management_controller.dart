import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/features/member/data/models/join_questions_models.dart';
import 'package:sep490_mo/features/member/data/providers/join_with_questions_providers.dart';
import 'package:sep490_mo/features/member/presentation/states/join_with_questions_state.dart';

part 'join_questions_management_controller.g.dart';

@riverpod
class JoinQuestionsManagementController extends _$JoinQuestionsManagementController {
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

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    ref.invalidateSelf();
  }

  Future<bool> addQuestion(String content, int orderNumber) async {
    final result = await ref
        .read(joinWithQuestionsRepositoryProvider)
        .createQuestion(
          fanHubId,
          CreateQuestionRequest(content: content, orderNumber: orderNumber),
        )
        .run();

    return result.fold(
      (failure) => false,
      (_) {
        refresh();
        return true;
      },
    );
  }

  Future<bool> updateQuestion(int questionId, String content, int orderNumber) async {
    final result = await ref
        .read(joinWithQuestionsRepositoryProvider)
        .updateQuestion(
          questionId,
          UpdateQuestionRequest(content: content, orderNumber: orderNumber),
        )
        .run();

    return result.fold(
      (failure) => false,
      (_) {
        refresh();
        return true;
      },
    );
  }

  Future<bool> deleteQuestion(int questionId) async {
    final result = await ref
        .read(joinWithQuestionsRepositoryProvider)
        .deleteQuestion(questionId)
        .run();

    return result.fold(
      (failure) => false,
      (_) {
        refresh();
        return true;
      },
    );
  }
}
