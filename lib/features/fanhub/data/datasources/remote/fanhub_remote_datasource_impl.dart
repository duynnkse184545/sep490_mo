import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http_parser/http_parser.dart';
import 'package:mime/mime.dart';
import 'package:sep490_mo/core/constants/api_constants.dart';
import 'package:sep490_mo/core/error/dio_exception_mapper.dart';
import 'package:sep490_mo/core/error/exceptions.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/fanhub/data/datasources/remote/api/fanhub_api_service.dart';
import 'package:sep490_mo/features/fanhub/data/datasources/remote/fanhub_remote_datasource.dart';
import 'package:sep490_mo/features/fanhub/data/models/fanhub_models.dart';

class FanHubRemoteDataSourceImpl implements FanHubRemoteDataSource {
  final FanHubApiService _apiService;

  FanHubRemoteDataSourceImpl({required FanHubApiService apiService})
    : _apiService = apiService;

  @override
  Future<List<FanHub>> getFanHubs({
    required int pageNo,
    required int pageSize,
    required String sortBy,
    required bool includePrivate,
  }) async {
    try {
      final response = await _apiService.getFanHubs(
        pageNo,
        pageSize,
        sortBy,
        includePrivate,
      );
      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) =>
          throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to fetch FanHubs');
    } catch (e, stack) {
      debugPrint('FanHubRemoteDataSourceImpl.getFanHubs error: $e');
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
      final response = await _apiService.getFanHubsByCategory(
        pageNo,
        pageSize,
        category,
      );
      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) =>
          throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(
        e,
        'Failed to fetch FanHubs by category',
      );
    } catch (e, stack) {
      debugPrint('FanHubRemoteDataSourceImpl.getFanHubsByCategory error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<FanHub> getFanHubBySubdomain(String subdomain) async {
    try {
      final response = await _apiService.getFanHubBySubdomain(subdomain);
      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) =>
          throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(
        e,
        'Failed to fetch FanHub details',
      );
    } catch (e, stack) {
      debugPrint('FanHubRemoteDataSourceImpl.getFanHubBySubdomain error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<List<FanHub>> getMyHubs({
    required int pageNo,
    required int pageSize,
    required String sortBy,
  }) async {
    try {
      final response = await _apiService.getMyHubs(pageNo, pageSize, sortBy);
      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) =>
          throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(
        e,
        'Failed to fetch your FanHubs',
      );
    } catch (e, stack) {
      debugPrint('FanHubRemoteDataSourceImpl.getMyHubs error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<FanHub> getMyHubsAsOwner() async {
    try {
      final response = await _apiService.getMyHubsAsOwner();
      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) =>
          throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(
        e,
        'Failed to fetch your owned FanHub',
      );
    } catch (e, stack) {
      debugPrint('FanHubRemoteDataSourceImpl.getMyHubsAsOwner error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<List<FanHub>> searchHubs({
    required String keyword,
    required int pageNo,
    required int pageSize,
    required String sortBy,
    required String sortDir,
  }) async {
    try {
      final response = await _apiService.searchHubs(
        keyword,
        pageNo,
        pageSize,
        sortBy,
        sortDir,
      );
      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) =>
          throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to search FanHubs');
    } catch (e, stack) {
      debugPrint('FanHubRemoteDataSourceImpl.searchHubs error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> createFanHub({
    required CreateFanHubRequest request,
    String? bannerPath,
    String? avatarPath,
  }) async {
    try {
      final requestPart = MultipartFile.fromString(
        jsonEncode(request.toJson()),
        contentType: MediaType.parse(ApiConstants.contentTypeJson),
      );

      MultipartFile? banner;
      if (bannerPath != null) {
        final mimeType = lookupMimeType(bannerPath) ?? 'image/jpeg';
        banner = await MultipartFile.fromFile(
          bannerPath,
          contentType: MediaType.parse(mimeType),
        );
      }

      MultipartFile? avatar;
      if (avatarPath != null) {
        final mimeType = lookupMimeType(avatarPath) ?? 'image/jpeg';
        avatar = await MultipartFile.fromFile(
          avatarPath,
          contentType: MediaType.parse(mimeType),
        );
      }

      final response = await _apiService.createFanHub(
        requestPart,
        banner,
        avatar,
      );

      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to create FanHub');
    } catch (e, stack) {
      debugPrint('FanHubRemoteDataSourceImpl.createFanHub error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> uploadFanHubImages({
    required int fanHubId,
    required List<String> backgrounds,
    String? bannerPath,
    String? avatarPath,
  }) async {
    try {
      MultipartFile? banner;
      if (bannerPath != null) {
        final mimeType = lookupMimeType(bannerPath) ?? 'image/jpeg';
        banner = await MultipartFile.fromFile(
          bannerPath,
          contentType: MediaType.parse(mimeType),
        );
      }

      MultipartFile? avatar;
      if (avatarPath != null) {
        final mimeType = lookupMimeType(avatarPath) ?? 'image/jpeg';
        avatar = await MultipartFile.fromFile(
          avatarPath,
          contentType: MediaType.parse(mimeType),
        );
      }

      final response = await _apiService.uploadFanHub(
        fanHubId,
        backgrounds,
        banner,
        avatar,
      );

      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to upload images');
    } catch (e, stack) {
      debugPrint('FanHubRemoteDataSourceImpl.uploadFanHubImages error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }
}
