import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sep490_mo/features/fanhub/data/models/fanhub_models.dart';

part 'fanhub_detail_state.freezed.dart';

@freezed
sealed class FanHubDetailState with _$FanHubDetailState {
  const factory FanHubDetailState.loaded(FanHub fanHub) = _Loaded;
}
