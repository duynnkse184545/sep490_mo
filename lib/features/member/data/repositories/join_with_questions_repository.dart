import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/member/data/models/join_questions_models.dart';

abstract class JoinWithQuestionsRepository {
  TaskResult<List<JoinQuestions>> getJoinQuestions(int hubId);
  TaskVoid joinWithAnswers(int fanHubId, List<JoinAnswersRequest> answers);
  TaskVoid createQuestion(int hubId, CreateQuestionRequest request);
  TaskVoid updateQuestion(int questionId, UpdateQuestionRequest request);
  TaskVoid deleteQuestion(int questionId);
}
