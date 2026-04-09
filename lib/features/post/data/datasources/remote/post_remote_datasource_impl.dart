import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sep490_mo/core/error/dio_exception_mapper.dart';
import 'package:sep490_mo/core/error/exceptions.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/post/data/datasources/remote/api/post_api_service.dart';
import 'package:sep490_mo/features/post/data/datasources/remote/post_remote_datasource.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';

class PostRemoteDatasourceImpl implements PostRemoteDatasource {
  final PostApiService _postApi;

  PostRemoteDatasourceImpl({required PostApiService postApi})
    : _postApi = postApi;

  @override
  Future<void> createPost(CreatePostRequest request) async {
    try {
      final response = await _postApi.createPost(request);
      debugPrint('PostRemoteDatasourceImpl.createPost: $response');
      return switch (response) {
        ApiResponseSuccess() => null,
        ApiResponseFailure(:final message, :final error) =>
          throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to create post');
    } catch (e, stack) {
      debugPrint('Other error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }
}
