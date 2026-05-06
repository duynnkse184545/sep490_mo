import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_models.freezed.dart';
part 'item_models.g.dart';

enum GachaType{
  @JsonValue('GOOD_LUCK')
  goodLuck,
  @JsonValue('MAIN_REWARD')
  mainReward
}

@freezed
abstract class ShopItem with _$ShopItem {
  const factory ShopItem({
    required int shopItemId,
    required int itemId,
    required String itemName,
    String? description,
    String? imageUrl,
    required String category,
    required int price,
  }) = _ShopItem;

  factory ShopItem.fromJson(Map<String, dynamic> json) => _$ShopItemFromJson(json);
}

@freezed
abstract class BannerItem with _$BannerItem {
  const factory BannerItem({
    required int bannerItemId,
    required int bannerId,
    int? itemId,
    required String itemName,
    String? description,
    String? category,
    String? imageUrl,
    required int multiplier,
    required GachaType type,
  }) = _BannerItem;

  factory BannerItem.fromJson(Map<String, dynamic> json) => _$BannerItemFromJson(json);
}

@freezed
abstract class Banner with _$Banner {
  const factory Banner({
    required int bannerId,
    required String name,
    required DateTime startTime,
    required DateTime endTime,
    String? description,
    required int gachaCost,
    required DateTime createdAt,
    String? bannerImgUrl,
    required bool isActive,
  }) = _Banner;

  factory Banner.fromJson(Map<String, dynamic> json) => _$BannerFromJson(json);
}

