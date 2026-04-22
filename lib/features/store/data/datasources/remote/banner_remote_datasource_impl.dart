import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:sep490_mo/core/error/dio_exception_mapper.dart';
import 'package:sep490_mo/core/error/exceptions.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/store/data/datasources/remote/api/banner_api_service.dart';
import 'package:sep490_mo/features/store/data/datasources/remote/banner_remote_datasource.dart';
import 'package:sep490_mo/features/store/data/models/item_models.dart';

class BannerRemoteDataSourceImpl implements BannerRemoteDataSource {
  final BannerApiService _apiService;

  BannerRemoteDataSourceImpl({required BannerApiService apiService}) : _apiService = apiService;

  @override
  Future<Banner> getBanner() async {
    try {
      final response = await _apiService.getBanner();
      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) =>
          throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to get banner');
    } catch (e, stack) {
      debugPrint('BannerRemoteDataSourceImpl.getBanner error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<List<BannerItem>> getBannerItems(int bannerId) async {
    try {
      final response = await _apiService.getBannerItems(bannerId);
      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) =>
          throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to get banner items');
    } catch (e, stack) {
      debugPrint('BannerRemoteDataSourceImpl.getBannerItems error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> gacha(int bannerId) async {
    try {
      final response = await _apiService.gacha(bannerId);
      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to perform gacha');
    } catch (e, stack) {
      debugPrint('BannerRemoteDataSourceImpl.gacha error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }
}
