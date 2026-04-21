import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sep490_mo/core/error/dio_exception_mapper.dart';
import 'package:sep490_mo/core/error/exceptions.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/user/data/datasources/remote/api/vtuber_application_api_service.dart';
import 'package:sep490_mo/features/user/data/datasources/remote/vtuber_application_remote_datasource.dart';
import 'package:sep490_mo/features/user/data/models/vtuber_models.dart';

class VtuberApplicationRemoteDataSourceImpl implements VtuberApplicationRemoteDataSource {
  final VtuberApplicationApiService _apiService;

  VtuberApplicationRemoteDataSourceImpl({required VtuberApplicationApiService apiService})
      : _apiService = apiService;

  @override
  Future<List<VtuberApplication>> getMyVtuberApplication() async {
    try {
      final response = await _apiService.getMyVtuberApplication();
      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) =>
          throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to get applications');
    } catch (e, stack) {
      debugPrint('VtuberApplicationRemoteDataSourceImpl.getMyVtuberApplication error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> registerVtuber(VtuberRegisterRequest request) async {
    try {
      final response = await _apiService.registerVtuber(request);
      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to submit application');
    } catch (e, stack) {
      debugPrint('VtuberApplicationRemoteDataSourceImpl.registerVtuber error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }
}
