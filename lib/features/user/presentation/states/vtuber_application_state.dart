import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sep490_mo/features/user/data/models/vtuber_models.dart';

part 'vtuber_application_state.freezed.dart';

@freezed
sealed class VtuberApplicationState with _$VtuberApplicationState {
  const factory VtuberApplicationState.initial() = _Initial;
  const factory VtuberApplicationState.loading() = _Loading;
  const factory VtuberApplicationState.loaded(List<VtuberApplication> applications) = _Loaded;
  const factory VtuberApplicationState.error(String message) = _Error;
  const factory VtuberApplicationState.success() = _Success;
}
