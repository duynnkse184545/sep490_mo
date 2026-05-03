import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/notification/data/datasources/remote/api/notification_stream_api_service.dart';
import 'package:sep490_mo/features/notification/data/datasources/remote/notification_stream_remote_datasource.dart';
import 'package:sep490_mo/features/notification/data/models/notification_models.dart';

class NotificationStreamRemoteDataSourceImpl implements NotificationStreamRemoteDataSource {
  final NotificationStreamApiService _apiService;

  NotificationStreamRemoteDataSourceImpl({required NotificationStreamApiService apiService})
      : _apiService = apiService;

  @override
  Stream<ApiResponse<List<Notification>>> getNotifications() {
    try {
      return _apiService.getNotifications().handleError((error) {
        debugPrint('Error in notification stream: $error');
        // Handle Dio or other stream errors here
        throw error;
      });
    } catch (e, stack) {
      debugPrint('NotificationStreamRemoteDataSourceImpl.getNotifications error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<StreamStatus> getStreamStatus() async {
    try {
      final response = await _apiService.getStreamStatus();
      return switch(response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) =>
            throw Exception('Failed to get stream status: $message, Error: $error'),
      };
    } on DioException catch (e) {
      debugPrint('Dio error getting stream status: $e');
      rethrow;
    } catch (e, stack) {
      debugPrint('Error getting stream status: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }
}
