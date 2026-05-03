import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sep490_mo/features/notification/data/models/notification_models.dart';

part 'notification_state.freezed.dart';

@freezed
sealed class NotificationState with _$NotificationState {
  const factory NotificationState.ready(List<Notification> notifications) = _Ready;
  const factory NotificationState.loading() = _Loading;
  const factory NotificationState.empty() = _Empty;
  const factory NotificationState.error(String message) = _Error;
}
