import 'package:sep490_mo/features/notification/data/models/notification_models.dart';

abstract class NotificationStreamRemoteDataSource {
  Stream<Notification> getNotification();
  Future<StreamStatus> getStreamStatus();
}
