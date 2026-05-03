import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/features/notification/data/providers/notification_providers.dart';
import 'package:sep490_mo/features/notification/presentation/states/notification_state.dart';

part 'notification_controller.g.dart';

@riverpod
class NotificationController extends _$NotificationController {
  StreamSubscription? _remoteStreamSub;

  @override
  Stream<NotificationState> build() {
    // 1. Start background remote listener to keep DB updated
    _initRemoteListener();

    // 2. Trigger initial async fetch to populate DB immediately
    _initialFetch();

    // 3. Return local DB stream as the primary state source
    return ref.watch(notificationRepositoryProvider).watchNotifications().map((result) {
      return result.fold(
        (failure) => NotificationState.error(failure.message),
        (notifications) {
          if (notifications.isEmpty) {
            return const NotificationState.empty();
          }
          return NotificationState.ready(notifications);
        },
      );
    });
  }

  void _initRemoteListener() {
    _remoteStreamSub?.cancel();
    _remoteStreamSub = ref
        .read(notificationRepositoryProvider)
        .listenToRemoteNotifications()
        .listen((_) {
          // No need to do anything here, listenToRemoteNotifications 
          // already updates the local DB, which triggers the build() stream.
        });
    
    ref.onDispose(() => _remoteStreamSub?.cancel());
  }

  Future<void> _initialFetch() async {
    // We don't wait for this to return data, 
    // because watchNotifications() will pick up the changes.
    await ref.read(notificationRepositoryProvider).getNotifications().run();
  }

  Future<void> markAsRead(int notificationId) async {
    await ref.read(notificationRepositoryProvider).readNotification(notificationId).run();
  }

  Future<void> markAllAsRead() async {
    await ref.read(notificationRepositoryProvider).readAllNotifications().run();
  }

  Future<void> deleteNotification(int notificationId) async {
    await ref.read(notificationRepositoryProvider).deleteNotification(notificationId).run();
  }

  Future<void> refresh() async {
    await _initialFetch();
  }
}
