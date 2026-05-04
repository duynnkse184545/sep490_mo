import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sep490_mo/core/error/dio_exception_mapper.dart';
import 'package:sep490_mo/core/error/exceptions.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/payment/data/datasources/remote/api/payment_api_service.dart';
import 'package:sep490_mo/features/payment/data/datasources/remote/payment_remote_datasource.dart';
import 'package:sep490_mo/features/payment/data/models/payment_models.dart';

class PaymentRemoteDataSourceImpl implements PaymentRemoteDataSource {
  final PaymentApiService _apiService;

  PaymentRemoteDataSourceImpl({required PaymentApiService apiService}) : _apiService = apiService;

  @override
  Future<List<Payment>> getPackages() async {
    try {
      final response = await _apiService.getPackages();
      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) =>
          throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to get packages');
    } catch (e, stack) {
      debugPrint('PaymentRemoteDataSourceImpl.getPackages error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<CancelPaymentResponse> cancelPayment(int id) async {
    try {
      return await _apiService.cancelPayment(id);
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to cancel payment');
    } catch (e, stack) {
      debugPrint('PaymentRemoteDataSourceImpl.cancelPayment error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<String> createPayment(CreatePaymentRequest request) async {
    try {
      final response = await _apiService.createPayment(request);
      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) =>
          throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to create payment');
    } catch (e, stack) {
      debugPrint('PaymentRemoteDataSourceImpl.createPayment error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }
}
