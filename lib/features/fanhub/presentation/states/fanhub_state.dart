import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sep490_mo/features/fanhub/data/models/fanhub_models.dart';

part 'fanhub_state.freezed.dart';

@freezed
sealed class FanHubState with _$FanHubState {
  const factory FanHubState.ready(List<FanHub> fanHubs) = _Ready;
  const factory FanHubState.refreshing(List<FanHub> fanHubs) = _Refreshing;
  const factory FanHubState.loadingMore(List<FanHub> fanHubs) = _LoadingMore;
  const factory FanHubState.empty() = _Empty;
}
