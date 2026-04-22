import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sep490_mo/core/error/dio_exception_mapper.dart';
import 'package:sep490_mo/core/error/exceptions.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/store/data/datasources/remote/api/shop_api_service.dart';
import 'package:sep490_mo/features/store/data/datasources/remote/shop_remote_datasource.dart';
import 'package:sep490_mo/features/store/data/models/item_models.dart';

class ShopRemoteDataSourceImpl implements ShopRemoteDataSource {
  final ShopApiService _apiService;

  ShopRemoteDataSourceImpl({required ShopApiService apiService}) : _apiService = apiService;

  @override
  Future<List<ShopItem>> getAllShopItems() async {
    try {
      final response = await _apiService.getAllShopItems();
      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) =>
          throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to get shop items');
    } catch (e, stack) {
      debugPrint('ShopRemoteDataSourceImpl.getAllShopItems error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> purchase(int shopItemId) async {
    try {
      final response = await _apiService.purchase(shopItemId);
      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to purchase item');
    } catch (e, stack) {
      debugPrint('ShopRemoteDataSourceImpl.purchase error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }
}
