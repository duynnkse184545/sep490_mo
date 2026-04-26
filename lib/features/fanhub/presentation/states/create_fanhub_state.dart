import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_fanhub_state.freezed.dart';

@freezed
sealed class CreateFanHubState with _$CreateFanHubState {
  const factory CreateFanHubState.initial() = _Initial;
  const factory CreateFanHubState.loading() = _Loading;
  const factory CreateFanHubState.success() = _Success;
  const factory CreateFanHubState.error(String message) = _Error;
}
