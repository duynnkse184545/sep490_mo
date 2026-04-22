// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ShopItem _$ShopItemFromJson(Map<String, dynamic> json) => _ShopItem(
  itemId: (json['itemId'] as num).toInt(),
  itemName: json['itemName'] as String,
  description: json['description'] as String?,
  category: json['category'] as String,
  price: (json['price'] as num).toInt(),
);

Map<String, dynamic> _$ShopItemToJson(_ShopItem instance) => <String, dynamic>{
  'itemId': instance.itemId,
  'itemName': instance.itemName,
  'description': instance.description,
  'category': instance.category,
  'price': instance.price,
};

_BannerItem _$BannerItemFromJson(Map<String, dynamic> json) => _BannerItem(
  bannerItemId: (json['bannerItemId'] as num).toInt(),
  bannerId: (json['bannerId'] as num).toInt(),
  itemId: (json['itemId'] as num?)?.toInt(),
  itemName: json['itemName'] as String,
  description: json['description'] as String?,
  category: json['category'] as String?,
  imageUrl: json['imageUrl'] as String?,
  multiplier: (json['multiplier'] as num).toInt(),
  type: $enumDecode(_$GachaTypeEnumMap, json['type']),
);

Map<String, dynamic> _$BannerItemToJson(_BannerItem instance) =>
    <String, dynamic>{
      'bannerItemId': instance.bannerItemId,
      'bannerId': instance.bannerId,
      'itemId': instance.itemId,
      'itemName': instance.itemName,
      'description': instance.description,
      'category': instance.category,
      'imageUrl': instance.imageUrl,
      'multiplier': instance.multiplier,
      'type': _$GachaTypeEnumMap[instance.type]!,
    };

const _$GachaTypeEnumMap = {
  GachaType.goodLuck: 'GOOD_LUCK',
  GachaType.mainReward: 'MAIN_REWARD',
};

_Banner _$BannerFromJson(Map<String, dynamic> json) => _Banner(
  bannerId: (json['bannerId'] as num).toInt(),
  name: json['name'] as String,
  startTime: DateTime.parse(json['startTime'] as String),
  endTime: DateTime.parse(json['endTime'] as String),
  description: json['description'] as String?,
  gachaCost: (json['gachaCost'] as num).toInt(),
  createdAt: DateTime.parse(json['createdAt'] as String),
  bannerImgUrl: json['bannerImgUrl'] as String?,
  isActive: json['isActive'] as bool,
);

Map<String, dynamic> _$BannerToJson(_Banner instance) => <String, dynamic>{
  'bannerId': instance.bannerId,
  'name': instance.name,
  'startTime': instance.startTime.toIso8601String(),
  'endTime': instance.endTime.toIso8601String(),
  'description': instance.description,
  'gachaCost': instance.gachaCost,
  'createdAt': instance.createdAt.toIso8601String(),
  'bannerImgUrl': instance.bannerImgUrl,
  'isActive': instance.isActive,
};
