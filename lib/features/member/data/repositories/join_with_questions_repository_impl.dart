import 'package:sep490_mo/core/error/error_handler.dart';
import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/member/data/datasources/remote/join_with_questions_remote_datasource.dart';
import 'package:sep490_mo/features/member/data/models/join_questions_models.dart';
import 'package:sep490_mo/features/member/data/repositories/join_with_questions_repository.dart';

class JoinWithQuestionsRepositoryImpl implements JoinWithQuestionsRepository {
  final JoinWithQuestionsRemoteDataSource _remoteDataSource;

  JoinWithQuestionsRepositoryImpl({
    required JoinWithQuestionsRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  @override
  TaskResult<List<JoinQuestions>> getJoinQuestions(int hubId) {
    return ErrorHandler.execute(() async {
      return await _remoteDataSource.getJoinQuestions(hubId);
    });
  }

  @override
  TaskVoid joinWithAnswers(int fanHubId, List<JoinAnswersRequest> answers) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.joinWithAnswers(fanHubId, answers);
    });
  }

  @override
  TaskVoid createQuestion(int hubId, CreateQuestionRequest request) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.createQuestion(hubId, request);
    });
  }

  @override
  TaskVoid updateQuestion(int questionId, UpdateQuestionRequest request) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.updateQuestion(questionId, request);
    });
  }

  @override
  TaskVoid deleteQuestion(int questionId) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.deleteQuestion(questionId);
    });
  }
}
