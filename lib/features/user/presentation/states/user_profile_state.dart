import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sep490_mo/features/user/data/models/user_models.dart';

part 'user_profile_state.freezed.dart';

@freezed
sealed class UserProfileState with _$UserProfileState {
  const factory UserProfileState.initial() = _Initial;
  const factory UserProfileState.loading() = _Loading;
  const factory UserProfileState.loaded(User user) = _Loaded;
  const factory UserProfileState.error(String message) = _Error;
}
