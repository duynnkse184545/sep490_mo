import 'package:freezed_annotation/freezed_annotation.dart';
import '../../features/user/data/models/user_models.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial() = _Initial;
  const factory AppState.loading() = _Loading;
  const factory AppState.ready(User user) = _Ready;
  const factory AppState.unauthenticated() = _Unauthenticated;
  const factory AppState.error(String message) = _Error;
}
