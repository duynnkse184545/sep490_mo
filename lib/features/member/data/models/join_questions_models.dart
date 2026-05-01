import 'package:freezed_annotation/freezed_annotation.dart';

part 'join_questions_models.freezed.dart';

part 'join_questions_models.g.dart';

@freezed
abstract class JoinQuestions with _$JoinQuestions {
  const factory JoinQuestions({
    required int id,
    required int hubId,
    required String content,
    required int orderNumber,
    required DateTime createdAt,
  }) = _JoinQuestions;

  factory JoinQuestions.fromJson(Map<String, dynamic> json) =>
      _$JoinQuestionsFromJson(json);
}

@freezed
abstract class CreateQuestionRequest with _$CreateQuestionRequest {
  const factory CreateQuestionRequest({
    required String content,
    required int orderNumber,
  }) = _CreateQuestionRequest;

  factory CreateQuestionRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateQuestionRequestFromJson(json);
}

@freezed
abstract class UpdateQuestionRequest with _$UpdateQuestionRequest {
  const factory UpdateQuestionRequest({
    String? content,
    int? orderNumber
  }) = _UpdateQuestionRequest;

  factory UpdateQuestionRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateQuestionRequestFromJson(json);
}

@freezed
abstract class JoinAnswersRequest with _$JoinAnswersRequest {
  const factory JoinAnswersRequest({
    required int questionId,
    required String content,
  }) = _JoinAnswersRequest;

  factory JoinAnswersRequest.fromJson(Map<String, dynamic> json) =>
      _$JoinAnswersRequestFromJson(json);
}
