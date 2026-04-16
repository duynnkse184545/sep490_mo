import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sep490_mo/core/error/dio_exception_mapper.dart';
import 'package:sep490_mo/core/error/exceptions.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/post/data/datasources/remote/api/comment_api_service.dart';
import 'package:sep490_mo/features/post/data/datasources/remote/comment_remote_datasource.dart';
import 'package:sep490_mo/features/post/data/models/comment_models.dart';

class CommentRemoteDataSourceImpl implements CommentRemoteDataSource {
  final CommentApiService _commentApi;

  CommentRemoteDataSourceImpl({required CommentApiService commentApi})
      : _commentApi = commentApi;

  @override
  Future<List<Comment>> getPostComments(int postId) async {
    try {
      final response = await _commentApi.getPostComments(postId);
      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) =>
          throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to get comments');
    } catch (e, stack) {
      debugPrint('CommentRemoteDataSourceImpl.getPostComments error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> createComment(CommentRequest comment) async {
    try {
      final response = await _commentApi.createComment(comment);
      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to create comment');
    } catch (e, stack) {
      debugPrint('CommentRemoteDataSourceImpl.createComment error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> likeComment(int commentId) async {
    try {
      final response = await _commentApi.likeComment(commentId);
      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to like comment');
    } catch (e, stack) {
      debugPrint('CommentRemoteDataSourceImpl.likeComment error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> unlikeComment(int commentId) async {
    try {
      final response = await _commentApi.unlikeComment(commentId);
      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to unlike comment');
    } catch (e, stack) {
      debugPrint('CommentRemoteDataSourceImpl.unlikeComment error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> giftComment(int commentId) async {
    try {
      final response = await _commentApi.giftComment(commentId);
      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to gift comment');
    } catch (e, stack) {
      debugPrint('CommentRemoteDataSourceImpl.giftComment error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> editComment(int commentId, String content) async {
    try {
      final response = await _commentApi.editComment(commentId, content);
      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to edit comment');
    } catch (e, stack) {
      debugPrint('CommentRemoteDataSourceImpl.editComment error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> deleteComment(int commentId) async {
    try {
      final response = await _commentApi.deleteComment(commentId);
      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to delete comment');
    } catch (e, stack) {
      debugPrint('CommentRemoteDataSourceImpl.deleteComment error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }
}
