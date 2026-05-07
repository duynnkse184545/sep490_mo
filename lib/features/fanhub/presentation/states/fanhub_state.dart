import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sep490_mo/features/fanhub/data/models/fanhub_models.dart';

part 'fanhub_state.freezed.dart';

enum FanHubTab { discover, myHubs }

@freezed
sealed class FanHubState with _$FanHubState {
  const factory FanHubState.ready({
    required List<FanHub> fanHubs,
    @Default([]) List<FanHub> topHubs,
    required FanHubTab activeTab,
  }) = _Ready;
  
  const factory FanHubState.refreshing({
    required List<FanHub> fanHubs,
    @Default([]) List<FanHub> topHubs,
    required FanHubTab activeTab,
  }) = _Refreshing;
  
  const factory FanHubState.loadingMore({
    required List<FanHub> fanHubs,
    @Default([]) List<FanHub> topHubs,
    required FanHubTab activeTab,
  }) = _LoadingMore;
  
  const factory FanHubState.empty(FanHubTab activeTab) = _Empty;
}
