import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/notification/data/models/notification_models.dart';

abstract class NotificationStreamRemoteDataSource {
  Stream<ApiResponse<List<Notification>>> getNotifications();
  Future<StreamStatus> getStreamStatus();
}
