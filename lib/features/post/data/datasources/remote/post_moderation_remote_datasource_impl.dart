import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sep490_mo/core/error/dio_exception_mapper.dart';
import 'package:sep490_mo/core/error/exceptions.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/post/data/datasources/remote/api/post_moderation_api_service.dart';
import 'package:sep490_mo/features/post/data/datasources/remote/post_moderation_remote_datasource.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';
import 'package:sep490_mo/features/post/data/models/report_models.dart';

class PostModerationRemoteDatasourceImpl implements PostModerationRemoteDatasource {
  final PostModerationApiService _moderationApi;

  PostModerationRemoteDatasourceImpl({required PostModerationApiService moderationApi})
      : _moderationApi = moderationApi;

  @override
  Future<List<PostModeration>> getPendingPosts({
    required String subdomain,
    required int pageNo,
    required int pageSize,
    required String sortBy,
  }) async {
    try {
      final response = await _moderationApi.getPendingPosts(
        subdomain,
        pageNo,
        pageSize,
        sortBy,
      );

      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) =>
          throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to get pending posts');
    } catch (e, stack) {
      debugPrint('PostModerationRemoteDatasourceImpl.getPendingPosts error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<List<PostModeration>> getAllPosts({
    required int fanHubId,
    required int pageNo,
    required int pageSize,
    required String sortBy,
  }) async {
    try {
      final response = await _moderationApi.getAllPosts(
        fanHubId,
        pageNo,
        pageSize,
        sortBy,
      );

      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) =>
          throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to get all posts');
    } catch (e, stack) {
      debugPrint('PostModerationRemoteDatasourceImpl.getAllPosts error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<List<Post>> getAllReports({
    required int fanHubId,
    required int pageNo,
    required int pageSize,
    required String sortBy,
  }) async {
    try {
      final response = await _moderationApi.getAllReports(
        fanHubId,
        pageNo,
        pageSize,
        sortBy,
      );

      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) =>
          throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to get all reports');
    } catch (e, stack) {
      debugPrint('PostModerationRemoteDatasourceImpl.getAllReports error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<List<Post>> getPendingReports({
    required int fanHubId,
    required int pageNo,
    required int pageSize,
    required String sortBy,
  }) async {
    try {
      final response = await _moderationApi.getPendingReports(
        fanHubId,
        pageNo,
        pageSize,
        sortBy,
      );

      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) =>
          throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to get pending reports');
    } catch (e, stack) {
      debugPrint('PostModerationRemoteDatasourceImpl.getPendingReports error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<List<PostWithReport>> getPostsWithReports({
    required int fanHubId,
    required int pageNo,
    required int pageSize,
    required String sortBy,
  }) async {
    try {
      final response = await _moderationApi.getPostsWithReports(
        fanHubId,
        pageNo,
        pageSize,
        sortBy,
      );

      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) =>
        throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to get posts with reports');
    } catch (e, stack) {
      debugPrint('PostModerationRemoteDatasourceImpl.getPostsWithReports error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> aiRevalidate(int postId) async {
    try {
      final response = await _moderationApi.aiRevalidate(postId);

      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to AI revalidate');
    } catch (e, stack) {
      debugPrint('PostModerationRemoteDatasourceImpl.aiRevalidate error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> reviewPost(int postId, PostStatus status) async {
    try {
      final response = await _moderationApi.reviewPost(postId, status);

      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to review post');
    } catch (e, stack) {
      debugPrint('PostModerationRemoteDatasourceImpl.reviewPost error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> reviewPostBulk(List<int> postIds, PostStatus status) async {
    try {
      final response = await _moderationApi.reviewPostBulk(postIds, status);

      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to bulk review posts');
    } catch (e, stack) {
      debugPrint('PostModerationRemoteDatasourceImpl.reviewPostBulk error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> resolveReport(int reportId, String resolveMessage) async {
    try {
      final response = await _moderationApi.resolveReport(reportId, resolveMessage);

      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to resolve report');
    } catch (e, stack) {
      debugPrint('PostModerationRemoteDatasourceImpl.resolveReport error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> resolveReportBulk(List<int> reportIds, String resolveMessage) async {
    try {
      final response = await _moderationApi.resolveReportBulk(reportIds, resolveMessage);

      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to bulk resolve reports');
    } catch (e, stack) {
      debugPrint('PostModerationRemoteDatasourceImpl.resolveReportBulk error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }
}
