import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sep490_mo/core/error/dio_exception_mapper.dart';
import 'package:sep490_mo/core/error/exceptions.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/post/data/datasources/remote/api/feed_api_service.dart';
import 'package:sep490_mo/features/post/data/datasources/remote/feed_remote_datasource.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';


class FeedRemoteDatasourceImpl implements FeedRemoteDatasource {
  final FeedApiService _feedApi;

  FeedRemoteDatasourceImpl({required FeedApiService feedApi})
      : _feedApi = feedApi;

  @override
  Future<List<Post>> getFeed(int pageNo, int pageSize, String sortBy) async {
    try {
      final response = await _feedApi.getFeed(pageNo, pageSize, sortBy);
      debugPrint('FeedRemoteDatasourceImpl.getFeed: $response');
      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) =>
        throw ServerException(message, error)
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to get current user');
    }catch (e, stack) {
      debugPrint('Other error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }


}