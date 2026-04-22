import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sep490_mo/features/store/data/models/item_models.dart';

part 'banner_state.freezed.dart';

@freezed
sealed class BannerState with _$BannerState {
  const factory BannerState.ready({
    required Banner banner,
    required List<BannerItem> items,
  }) = _Ready;
}
