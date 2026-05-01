import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/member/data/models/join_questions_models.dart';

part 'join_with_questions_api_service.g.dart';

@RestApi()
abstract class JoinWithQuestionsApiService {
  factory JoinWithQuestionsApiService(Dio dio) = _JoinWithQuestionsApiService;

  @GET('/fan-hub-join-questions/hub/{hubId}')
  Future<ApiResponse<List<JoinQuestions>>> getJoinQuestions(
    @Path('hubId') int hubId,
  );

  @POST('/fan-hub-member/join-with-answers/{fanHubId}')
  Future<ApiResponse> joinWithAnswers(
    @Path('fanHubId') int fanHubId,
    @Body() List<JoinAnswersRequest> joinAnswersRequest,
  );

  @POST('/fan-hub-join-questions/{hubId}')
  Future<ApiResponse> createQuestion(
    @Path('hubId') int hubId,
    @Body() CreateQuestionRequest createQuestionRequest,
  );

  @PUT('/fan-hub-join-questions/{questionId}')
  Future<ApiResponse> updateQuestion(
    @Path('questionId') int questionId,
    @Body() UpdateQuestionRequest updateQuestionRequest,
  );

  @DELETE('/fan-hub-join-questions/{questionId}')
  Future<ApiResponse> deleteQuestion(@Path('questionId') int questionId);
}
