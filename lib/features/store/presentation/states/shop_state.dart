import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sep490_mo/features/store/data/models/item_models.dart';

part 'shop_state.freezed.dart';

@freezed
sealed class ShopState with _$ShopState {
  const factory ShopState.ready(List<ShopItem> items) = _Ready;
  const factory ShopState.empty() = _Empty;
}
