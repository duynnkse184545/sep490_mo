import 'package:dio/dio.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:sep490_mo/core/error/dio_exception_mapper.dart';
import 'package:sep490_mo/core/error/exceptions.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/notification/data/datasources/remote/api/notification_async_api_service.dart';
import 'package:sep490_mo/features/notification/data/datasources/remote/notification_async_remote_datasource.dart';
import 'package:sep490_mo/features/notification/data/models/notification_models.dart';

class NotificationAsyncRemoteDataSourceImpl implements NotificationAsyncRemoteDataSource {
  final NotificationAsyncApiService _apiService;

  NotificationAsyncRemoteDataSourceImpl({required NotificationAsyncApiService apiService})
      : _apiService = apiService;

  @override
  Future<List<Notification>> getAllNotifications({
    required int pageNo,
    required int pageSize,
    required String sortBy,
  }) async {
    try {
      final response = await _apiService.getAllNotifications(pageNo, pageSize, sortBy);
      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) =>
          throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to get all notifications');
    } catch (e, stack) {
      debugPrint('NotificationAsyncRemoteDataSourceImpl.getAllNotifications error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<List<Notification>> getUnreadNotifications({
    required int pageNo,
    required int pageSize,
    required String sortBy,
  }) async {
    try {
      final response = await _apiService.getUnreadNotifications(pageNo, pageSize, sortBy);
      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) =>
          throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to get unread notifications');
    } catch (e, stack) {
      debugPrint('NotificationAsyncRemoteDataSourceImpl.getUnreadNotifications error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<int> getUnreadNotificationCount() async {
    try {
      final response = await _apiService.getUnreadNotificationCount();
      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) =>
          throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to get unread notification count');
    } catch (e, stack) {
      debugPrint('NotificationAsyncRemoteDataSourceImpl.getUnreadNotificationCount error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> readAllNotifications() async {
    try {
      final response = await _apiService.readAllNotifications();
      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to read all notifications');
    } catch (e, stack) {
      debugPrint('NotificationAsyncRemoteDataSourceImpl.readAllNotifications error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> readNotification(int notificationId) async {
    try {
      final response = await _apiService.readNotification(notificationId);
      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to read notification');
    } catch (e, stack) {
      debugPrint('NotificationAsyncRemoteDataSourceImpl.readNotification error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> deleteNotification(int notificationId) async {
    try {
      final response = await _apiService.deleteNotification(notificationId);
      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to delete notification');
    } catch (e, stack) {
      debugPrint('NotificationAsyncRemoteDataSourceImpl.deleteNotification error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> deleteAllNotifications() async {
    try {
      final response = await _apiService.deleteAllNotifications();
      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to delete all notifications');
    } catch (e, stack) {
      debugPrint('NotificationAsyncRemoteDataSourceImpl.deleteAllNotifications error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }
}
