import 'package:fpdart/fpdart.dart';
import 'package:sep490_mo/core/error/error_handler.dart';
import 'package:sep490_mo/core/error/failures.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/notification/data/datasources/local/notification_local_datasource.dart';
import 'package:sep490_mo/features/notification/data/datasources/remote/notification_async_remote_datasource.dart';
import 'package:sep490_mo/features/notification/data/datasources/remote/notification_stream_remote_datasource.dart';
import 'package:sep490_mo/features/notification/data/models/notification_models.dart';
import 'package:sep490_mo/features/notification/data/repositories/notification_repository.dart';

class NotificationRepositoryImpl implements NotificationRepository {
  final NotificationAsyncRemoteDataSource _asyncDataSource;
  final NotificationStreamRemoteDataSource _streamDataSource;
  final NotificationLocalDataSource _localDataSource;

  NotificationRepositoryImpl({
    required NotificationAsyncRemoteDataSource asyncDataSource,
    required NotificationStreamRemoteDataSource streamDataSource,
    required NotificationLocalDataSource localDataSource,
  })  : _asyncDataSource = asyncDataSource,
        _streamDataSource = streamDataSource,
        _localDataSource = localDataSource;

  @override
  TaskResult<List<Notification>> getNotifications({
    int pageNo = 0,
    int pageSize = 20,
    String sortBy = 'createdAt',
  }) {
    return ErrorHandler.execute(() async {
      final notifications = await _asyncDataSource.getAllNotifications(
        pageNo: pageNo,
        pageSize: pageSize,
        sortBy: sortBy,
      );
      await ErrorHandler.executeOrNull(() => _localDataSource.cacheNotifications(notifications));
      return notifications;
    });
  }

  @override
  TaskResult<List<Notification>> getUnreadNotifications({
    int pageNo = 0,
    int pageSize = 20,
    String sortBy = 'createdAt',
  }) {
    return ErrorHandler.execute(() async {
      final notifications = await _asyncDataSource.getUnreadNotifications(
        pageNo: pageNo,
        pageSize: pageSize,
        sortBy: sortBy,
      );
      await ErrorHandler.executeOrNull(() => _localDataSource.cacheNotifications(notifications));
      return notifications;
    });
  }

  @override
  TaskResult<int> getUnreadNotificationCount() {
    return ErrorHandler.execute(() => _asyncDataSource.getUnreadNotificationCount());
  }

  @override
  TaskVoid readAllNotifications() {
    return ErrorHandler.execute(() async {
      await _asyncDataSource.readAllNotifications();
      await ErrorHandler.executeOrNull(() => _localDataSource.markAllAsRead());
    });
  }

  @override
  TaskVoid readNotification(int notificationId) {
    return ErrorHandler.execute(() async {
      await _asyncDataSource.readNotification(notificationId);
      await ErrorHandler.executeOrNull(() => _localDataSource.markAsRead(notificationId));
    });
  }

  @override
  TaskVoid deleteNotification(int notificationId) {
    return ErrorHandler.execute(() async {
      await _asyncDataSource.deleteNotification(notificationId);
      await ErrorHandler.executeOrNull(() => _localDataSource.deleteNotification(notificationId));
    });
  }

  @override
  TaskVoid deleteAllNotifications() {
    return ErrorHandler.execute(() async {
      await _asyncDataSource.deleteAllNotifications();
      await ErrorHandler.executeOrNull(() => _localDataSource.clearAll());
    });
  }

  @override
  StreamEither<List<Notification>> watchNotifications({int limit = 50, int offset = 0}) {
    return _localDataSource
        .watchNotifications(limit: limit, offset: offset)
        .map((data) => Right<Failure, List<Notification>>(data))
        .handleError((error) => Left<Failure, List<Notification>>(ErrorHandler.handle(error)));
  }

  @override
  StreamEither<List<Notification>> listenToRemoteNotifications() {
    return _streamDataSource.getNotifications().asyncMap<Either<Failure, List<Notification>>>((response) async {
      return await switch (response) {
        ApiResponseSuccess(:final data) => () async {
            await ErrorHandler.executeOrNull(() => _localDataSource.cacheNotifications(data));
            return Right<Failure, List<Notification>>(data);
          }(),
        ApiResponseFailure(:final message, :final error) =>
          Left<Failure, List<Notification>>(ServerFailure(message, error)),
      };
    }).handleError((error) {
      return Left<Failure, List<Notification>>(ErrorHandler.handle(error));
    });
  }

  @override
  TaskResult<StreamStatus> getStreamStatus() {
    return ErrorHandler.execute(() => _streamDataSource.getStreamStatus());
  }
}
