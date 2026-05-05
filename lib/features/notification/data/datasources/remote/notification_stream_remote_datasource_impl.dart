import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:json_annotation/json_annotation.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/notification/data/datasources/remote/api/notification_stream_api_service.dart';
import 'package:sep490_mo/features/notification/data/datasources/remote/notification_stream_remote_datasource.dart';
import 'package:sep490_mo/features/notification/data/models/notification_models.dart';

class NotificationStreamRemoteDataSourceImpl implements NotificationStreamRemoteDataSource {
  final NotificationStreamApiService _apiService;

  NotificationStreamRemoteDataSourceImpl({required NotificationStreamApiService apiService})
      : _apiService = apiService;

  @override
  Stream<Notification> getNotification() {
    return _apiService.getNotification()
        .map((event) => switch (event) {
      ApiResponseSuccess(:final data) => data,
      ApiResponseFailure(:final message, :final error) =>
      throw Exception('Notification stream error: $message, $error'),
    })
        .handleError(
          (e) => debugPrint('Skipping handshake/unparseable event: $e'),
      test: (e) => e is CheckedFromJsonException || e is TypeError || e is FormatException,
    );
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
