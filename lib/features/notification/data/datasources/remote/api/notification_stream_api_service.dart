import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/notification/data/models/notification_models.dart';

part 'notification_stream_api_service.g.dart';

@RestApi()
abstract class NotificationStreamApiService {
  factory NotificationStreamApiService(Dio dio) = _NotificationStreamApiService;

  @GET('/notifications/stream')
  Stream<ApiResponse<Notification>> getNotification();

  @GET('/notifications/status')
  Future<ApiResponse<StreamStatus>> getStreamStatus();
}