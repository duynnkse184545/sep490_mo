import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../features/auth/data/models/user_models.dart';
import '../../features/auth/presentation/controllers/auth_controller.dart';
import '../../features/auth/presentation/states/auth_state.dart';

part 'current_user_provider.g.dart';

@riverpod
User? currentUser(Ref ref) {
  final authState = ref.watch(authControllerProvider);
  return authState.maybeWhen(
    authenticated: (user) => user,
    orElse: () => null,
  );
}

@riverpod
User? requireCurrentUser(Ref ref) {
  final user = ref.watch(currentUserProvider);
  if (user == null) {
    throw Exception('User is not authenticated');
  }
  return user;
}

@riverpod
String? currentUserId(Ref ref) {
  return ref.watch(currentUserProvider)?.id;
}
