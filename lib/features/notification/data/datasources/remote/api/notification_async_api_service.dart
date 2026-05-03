import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/notification/data/models/notification_models.dart';

part 'notification_async_api_service.g.dart';

@RestApi()
abstract class NotificationAsyncApiService {
  factory NotificationAsyncApiService(Dio dio) = _NotificationAsyncApiService;

  @GET('/notifications')
  Future<ApiResponse<List<Notification>>> getAllNotifications(
      @Query('pageNo') int pageNo,
      @Query('pageSize') int pageSize,
      @Query('sortBy') String sortBy,
      );

  @GET('/notifications/unread')
  Future<ApiResponse<List<Notification>>> getUnreadNotifications(
      @Query('pageNo') int pageNo,
      @Query('pageSize') int pageSize,
      @Query('sortBy') String sortBy,
      );

  @GET('/notifications/unread/count')
  Future<ApiResponse<int>> getUnreadNotificationCount();

  @POST('/notifications/read-all')
  Future<ApiResponse> readAllNotifications();

  @POST('/notifications/{notificationId}/read')
  Future<ApiResponse> readNotification(
    @Path('notificationId') int notificationId,
  );

  @DELETE('/notifications/{notificationId}')
  Future<ApiResponse> deleteNotification(
    @Path('notificationId') int notificationId,
  );

  @DELETE('/notifications/all')
  Future<ApiResponse> deleteAllNotifications();
}
