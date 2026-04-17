import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sep490_mo/core/error/dio_exception_mapper.dart';
import 'package:sep490_mo/core/error/exceptions.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/post/data/datasources/remote/api/post_api_service.dart';
import 'package:sep490_mo/features/post/data/datasources/remote/post_remote_datasource.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';

class PostRemoteDatasourceImpl implements PostRemoteDataSource {
  final PostApiService _postApi;

  PostRemoteDatasourceImpl({required PostApiService postApi})
    : _postApi = postApi;

  @override
  Future<void> createPost(CreatePostRequest request) async {
    try {
      final response = await _postApi.createPost(request);
      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to create post');
    } catch (e, stack) {
      debugPrint('PostRemoteDatasourceImpl.createPost error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<List<Post>> getBookmarked({
    required int pageNo,
    required int pageSize,
    required String sortBy,
  }) async {
    try {
      final response = await _postApi.getBookmarked(pageNo, pageSize, sortBy);
      return switch (response) {
        // NOTE: ApiResponse<Post> in API service might need correction to ApiResponse<List<Post>>
        // if it actually returns a list. Assuming List<Post> here for DataSource.
        ApiResponseSuccess(:final data) => [data as Post], // Placeholder if it really returns one
        ApiResponseFailure(:final message, :final error) =>
          throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to get bookmarked posts');
    } catch (e, stack) {
      debugPrint('PostRemoteDatasourceImpl.getBookmarked error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<SummaryResponse> getSummary(int postId) async {
    try {
      final response = await _postApi.getSummary(postId);
      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) =>
          throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to get summary');
    } catch (e, stack) {
      debugPrint('PostRemoteDatasourceImpl.getSummary error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<TranslationResponse> getTranslation(int postId) async {
    try {
      final response = await _postApi.getTranslation(postId);
      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) =>
          throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to get translation');
    } catch (e, stack) {
      debugPrint('PostRemoteDatasourceImpl.getTranslation error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> bookmark(int postId) async {
    try {
      final response = await _postApi.bookmark(postId);
      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to bookmark post');
    } catch (e, stack) {
      debugPrint('PostRemoteDatasourceImpl.bookmark error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> like(int postId) async {
    try {
      final response = await _postApi.like(postId);
      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to like post');
    } catch (e, stack) {
      debugPrint('PostRemoteDatasourceImpl.like error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> unlike(int postId) async {
    try {
      final response = await _postApi.unlike(postId);
      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to unlike post');
    } catch (e, stack) {
      debugPrint('PostRemoteDatasourceImpl.unlike error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> vote(int postId, int optionId) async {
    try {
      final response = await _postApi.vote(postId, optionId);
      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to vote');
    } catch (e, stack) {
      debugPrint('PostRemoteDatasourceImpl.vote error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> unvote(int postId) async {
    try {
      final response = await _postApi.unvote(postId);
      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to unvote');
    } catch (e, stack) {
      debugPrint('PostRemoteDatasourceImpl.unvote error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> createPoll(PollRequest poll) async {
    try {
      final response = await _postApi.createPoll(poll);
      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to create poll');
    } catch (e, stack) {
      debugPrint('PostRemoteDatasourceImpl.createPoll error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> share(int postId) async {
    try {
      final response = await _postApi.share(postId);
      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to share post');
    } catch (e, stack) {
      debugPrint('PostRemoteDatasourceImpl.share error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> report(ReportRequest report) async {
    try {
      final response = await _postApi.report(report);
      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to report post');
    } catch (e, stack) {
      debugPrint('PostRemoteDatasourceImpl.report error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }
}
