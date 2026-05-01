// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_questions_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JoinQuestions _$JoinQuestionsFromJson(Map<String, dynamic> json) =>
    _JoinQuestions(
      id: (json['id'] as num).toInt(),
      hubId: (json['hubId'] as num).toInt(),
      content: json['content'] as String,
      orderNumber: (json['orderNumber'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$JoinQuestionsToJson(_JoinQuestions instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hubId': instance.hubId,
      'content': instance.content,
      'orderNumber': instance.orderNumber,
      'createdAt': instance.createdAt.toIso8601String(),
    };

_CreateQuestionRequest _$CreateQuestionRequestFromJson(
  Map<String, dynamic> json,
) => _CreateQuestionRequest(
  content: json['content'] as String,
  orderNumber: (json['orderNumber'] as num).toInt(),
);

Map<String, dynamic> _$CreateQuestionRequestToJson(
  _CreateQuestionRequest instance,
) => <String, dynamic>{
  'content': instance.content,
  'orderNumber': instance.orderNumber,
};

_UpdateQuestionRequest _$UpdateQuestionRequestFromJson(
  Map<String, dynamic> json,
) => _UpdateQuestionRequest(
  content: json['content'] as String?,
  orderNumber: (json['orderNumber'] as num?)?.toInt(),
);

Map<String, dynamic> _$UpdateQuestionRequestToJson(
  _UpdateQuestionRequest instance,
) => <String, dynamic>{
  'content': instance.content,
  'orderNumber': instance.orderNumber,
};

_JoinAnswersRequest _$JoinAnswersRequestFromJson(Map<String, dynamic> json) =>
    _JoinAnswersRequest(
      questionId: (json['questionId'] as num).toInt(),
      content: json['content'] as String,
    );

Map<String, dynamic> _$JoinAnswersRequestToJson(_JoinAnswersRequest instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'content': instance.content,
    };
