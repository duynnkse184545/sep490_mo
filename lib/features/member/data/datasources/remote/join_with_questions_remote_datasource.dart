import 'package:sep490_mo/features/member/data/models/join_questions_models.dart';

abstract class JoinWithQuestionsRemoteDataSource {
  Future<List<JoinQuestions>> getJoinQuestions(int hubId);
  Future<void> joinWithAnswers(int fanHubId, List<JoinAnswersRequest> answers);
  Future<void> createQuestion(int hubId, CreateQuestionRequest request);
  Future<void> updateQuestion(int questionId, UpdateQuestionRequest request);
  Future<void> deleteQuestion(int questionId);
}
