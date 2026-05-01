import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sep490_mo/core/error/dio_exception_mapper.dart';
import 'package:sep490_mo/core/error/exceptions.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/member/data/datasources/remote/api/join_with_questions_api_service.dart';
import 'package:sep490_mo/features/member/data/datasources/remote/join_with_questions_remote_datasource.dart';
import 'package:sep490_mo/features/member/data/models/join_questions_models.dart';

class JoinWithQuestionsRemoteDataSourceImpl implements JoinWithQuestionsRemoteDataSource {
  final JoinWithQuestionsApiService _apiService;

  JoinWithQuestionsRemoteDataSourceImpl({required JoinWithQuestionsApiService apiService})
      : _apiService = apiService;

  @override
  Future<List<JoinQuestions>> getJoinQuestions(int hubId) async {
    try {
      final response = await _apiService.getJoinQuestions(hubId);
      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) =>
          throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to get join questions');
    } catch (e, stack) {
      debugPrint('JoinWithQuestionsRemoteDataSourceImpl.getJoinQuestions error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> joinWithAnswers(int fanHubId, List<JoinAnswersRequest> answers) async {
    try {
      final response = await _apiService.joinWithAnswers(fanHubId, answers);
      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to join with answers');
    } catch (e, stack) {
      debugPrint('JoinWithQuestionsRemoteDataSourceImpl.joinWithAnswers error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> createQuestion(int hubId, CreateQuestionRequest request) async {
    try {
      final response = await _apiService.createQuestion(hubId, request);
      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to create question');
    } catch (e, stack) {
      debugPrint('JoinWithQuestionsRemoteDataSourceImpl.createQuestion error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> updateQuestion(int questionId, UpdateQuestionRequest request) async {
    try {
      final response = await _apiService.updateQuestion(questionId, request);
      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to update question');
    } catch (e, stack) {
      debugPrint('JoinWithQuestionsRemoteDataSourceImpl.updateQuestion error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> deleteQuestion(int questionId) async {
    try {
      final response = await _apiService.deleteQuestion(questionId);
      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to delete question');
    } catch (e, stack) {
      debugPrint('JoinWithQuestionsRemoteDataSourceImpl.deleteQuestion error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }
}
