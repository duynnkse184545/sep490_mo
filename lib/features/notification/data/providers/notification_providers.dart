import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/core/database/database_provider.dart';
import 'package:sep490_mo/core/providers/api_provider.dart';
import 'package:sep490_mo/features/notification/data/datasources/local/notification_local_datasource.dart';
import 'package:sep490_mo/features/notification/data/datasources/local/notification_local_datasource_impl.dart';
import 'package:sep490_mo/features/notification/data/datasources/remote/api/notification_async_api_service.dart';
import 'package:sep490_mo/features/notification/data/datasources/remote/api/notification_stream_api_service.dart';
import 'package:sep490_mo/features/notification/data/datasources/remote/notification_async_remote_datasource.dart';
import 'package:sep490_mo/features/notification/data/datasources/remote/notification_async_remote_datasource_impl.dart';
import 'package:sep490_mo/features/notification/data/datasources/remote/notification_stream_remote_datasource.dart';
import 'package:sep490_mo/features/notification/data/datasources/remote/notification_stream_remote_datasource_impl.dart';
import 'package:sep490_mo/features/notification/data/repositories/notification_repository.dart';
import 'package:sep490_mo/features/notification/data/repositories/notification_repository_impl.dart';

part 'notification_providers.g.dart';

// API Services
@riverpod
NotificationAsyncApiService notificationAsyncApiService(Ref ref) {
  return NotificationAsyncApiService(ref.watch(apiClientProvider).dio);
}

@riverpod
NotificationStreamApiService notificationStreamApiService(Ref ref) {
  final baseDio = ref.watch(dioProvider);
  final client = ref.watch(apiClientProvider);

  // Create a specialized Dio for the stream to avoid timeouts
  final streamDio = Dio(baseDio.options.copyWith(
    receiveTimeout: Duration.zero, // Disable receive timeout for persistent streams
  ));

  // Reuse the configured interceptors (Auth, Network, etc.)
  streamDio.interceptors.addAll(client.dio.interceptors);

  return NotificationStreamApiService(streamDio);
}

// DataSources
@riverpod
NotificationLocalDataSource notificationLocalDataSource(Ref ref) {
  return NotificationLocalDataSourceImpl(
    ref.watch(notificationDaoProvider),
  );
}

@riverpod
NotificationAsyncRemoteDataSource notificationAsyncRemoteDataSource(Ref ref) {
  return NotificationAsyncRemoteDataSourceImpl(
    apiService: ref.watch(notificationAsyncApiServiceProvider),
  );
}

@riverpod
NotificationStreamRemoteDataSource notificationStreamRemoteDataSource(Ref ref) {
  return NotificationStreamRemoteDataSourceImpl(
    apiService: ref.watch(notificationStreamApiServiceProvider),
  );
}

// Repository
@riverpod
NotificationRepository notificationRepository(Ref ref) {
  return NotificationRepositoryImpl(
    asyncDataSource: ref.watch(notificationAsyncRemoteDataSourceProvider),
    streamDataSource: ref.watch(notificationStreamRemoteDataSourceProvider),
    localDataSource: ref.watch(notificationLocalDataSourceProvider),
  );
}
