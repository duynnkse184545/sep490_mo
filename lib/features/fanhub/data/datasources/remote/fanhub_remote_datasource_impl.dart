import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sep490_mo/core/error/dio_exception_mapper.dart';
import 'package:sep490_mo/core/error/exceptions.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/fanhub/data/datasources/remote/api/fanhub_api_service.dart';
import 'package:sep490_mo/features/fanhub/data/datasources/remote/fanhub_remote_datasource.dart';
import 'package:sep490_mo/features/fanhub/data/models/fanhub_models.dart';

class FanHubRemoteDatasourceImpl implements FanHubRemoteDatasource {
  final FanHubApiService _fanHubApi;

  FanHubRemoteDatasourceImpl({required FanHubApiService fanHubApi})
    : _fanHubApi = fanHubApi;

  @override
  Future<List<FanHub>> getFanHubs({
    required int pageNo,
    required int pageSize,
    required String sortBy,
    required bool includePrivate,
  }) async {
    try {
      final response = await _fanHubApi.getFanHubs(
        pageNo,
        pageSize,
        sortBy,
        includePrivate,
      );
      debugPrint('FanHubRemoteDatasourceImpl.getFanHubs: $response');
      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) =>
          throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to get fan hubs');
    } catch (e, stack) {
      debugPrint('Other error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<List<FanHub>> getFanHubsByCategory({
    required int pageNo,
    required int pageSize,
    required String category,
  }) async {
    try {
      final response = await _fanHubApi.getFanHubsByCategory(
        pageNo,
        pageSize,
        category,
      );
      debugPrint('FanHubRemoteDatasourceImpl.getFanHubsByCategory: $response');
      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) =>
          throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(
        e,
        'Failed to get fan hubs by category',
      );
    } catch (e, stack) {
      debugPrint('Other error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<FanHub> getFanHubBySubdomain(String subdomain) async {
    try {
      final response = await _fanHubApi.getFanHubBySubdomain(subdomain);
      debugPrint('FanHubRemoteDatasourceImpl.getFanHubBySubdomain: $response');
      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) =>
          throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(
        e,
        'Failed to get fan hub by subdomain',
      );
    } catch (e, stack) {
      debugPrint('Other error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> createFanHub(CreateFanHubRequest request) async {
    try {
      final response = await _fanHubApi.createFanHub(request);
      debugPrint('FanHubRemoteDatasourceImpl.createFanHub: $response');
      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to create fan hub');
    } catch (e, stack) {
      debugPrint('Other error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }
}
