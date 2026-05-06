// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShopItem {

 int get shopItemId; int get itemId; String get itemName; String? get description; String? get imageUrl; String get category; int get price;
/// Create a copy of ShopItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShopItemCopyWith<ShopItem> get copyWith => _$ShopItemCopyWithImpl<ShopItem>(this as ShopItem, _$identity);

  /// Serializes this ShopItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShopItem&&(identical(other.shopItemId, shopItemId) || other.shopItemId == shopItemId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.category, category) || other.category == category)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,shopItemId,itemId,itemName,description,imageUrl,category,price);

@override
String toString() {
  return 'ShopItem(shopItemId: $shopItemId, itemId: $itemId, itemName: $itemName, description: $description, imageUrl: $imageUrl, category: $category, price: $price)';
}


}

/// @nodoc
abstract mixin class $ShopItemCopyWith<$Res>  {
  factory $ShopItemCopyWith(ShopItem value, $Res Function(ShopItem) _then) = _$ShopItemCopyWithImpl;
@useResult
$Res call({
 int shopItemId, int itemId, String itemName, String? description, String? imageUrl, String category, int price
});




}
/// @nodoc
class _$ShopItemCopyWithImpl<$Res>
    implements $ShopItemCopyWith<$Res> {
  _$ShopItemCopyWithImpl(this._self, this._then);

  final ShopItem _self;
  final $Res Function(ShopItem) _then;

/// Create a copy of ShopItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? shopItemId = null,Object? itemId = null,Object? itemName = null,Object? description = freezed,Object? imageUrl = freezed,Object? category = null,Object? price = null,}) {
  return _then(_self.copyWith(
shopItemId: null == shopItemId ? _self.shopItemId : shopItemId // ignore: cast_nullable_to_non_nullable
as int,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int,itemName: null == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ShopItem].
extension ShopItemPatterns on ShopItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShopItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShopItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShopItem value)  $default,){
final _that = this;
switch (_that) {
case _ShopItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShopItem value)?  $default,){
final _that = this;
switch (_that) {
case _ShopItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int shopItemId,  int itemId,  String itemName,  String? description,  String? imageUrl,  String category,  int price)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShopItem() when $default != null:
return $default(_that.shopItemId,_that.itemId,_that.itemName,_that.description,_that.imageUrl,_that.category,_that.price);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int shopItemId,  int itemId,  String itemName,  String? description,  String? imageUrl,  String category,  int price)  $default,) {final _that = this;
switch (_that) {
case _ShopItem():
return $default(_that.shopItemId,_that.itemId,_that.itemName,_that.description,_that.imageUrl,_that.category,_that.price);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int shopItemId,  int itemId,  String itemName,  String? description,  String? imageUrl,  String category,  int price)?  $default,) {final _that = this;
switch (_that) {
case _ShopItem() when $default != null:
return $default(_that.shopItemId,_that.itemId,_that.itemName,_that.description,_that.imageUrl,_that.category,_that.price);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShopItem implements ShopItem {
  const _ShopItem({required this.shopItemId, required this.itemId, required this.itemName, this.description, this.imageUrl, required this.category, required this.price});
  factory _ShopItem.fromJson(Map<String, dynamic> json) => _$ShopItemFromJson(json);

@override final  int shopItemId;
@override final  int itemId;
@override final  String itemName;
@override final  String? description;
@override final  String? imageUrl;
@override final  String category;
@override final  int price;

/// Create a copy of ShopItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShopItemCopyWith<_ShopItem> get copyWith => __$ShopItemCopyWithImpl<_ShopItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShopItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShopItem&&(identical(other.shopItemId, shopItemId) || other.shopItemId == shopItemId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.category, category) || other.category == category)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,shopItemId,itemId,itemName,description,imageUrl,category,price);

@override
String toString() {
  return 'ShopItem(shopItemId: $shopItemId, itemId: $itemId, itemName: $itemName, description: $description, imageUrl: $imageUrl, category: $category, price: $price)';
}


}

/// @nodoc
abstract mixin class _$ShopItemCopyWith<$Res> implements $ShopItemCopyWith<$Res> {
  factory _$ShopItemCopyWith(_ShopItem value, $Res Function(_ShopItem) _then) = __$ShopItemCopyWithImpl;
@override @useResult
$Res call({
 int shopItemId, int itemId, String itemName, String? description, String? imageUrl, String category, int price
});




}
/// @nodoc
class __$ShopItemCopyWithImpl<$Res>
    implements _$ShopItemCopyWith<$Res> {
  __$ShopItemCopyWithImpl(this._self, this._then);

  final _ShopItem _self;
  final $Res Function(_ShopItem) _then;

/// Create a copy of ShopItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? shopItemId = null,Object? itemId = null,Object? itemName = null,Object? description = freezed,Object? imageUrl = freezed,Object? category = null,Object? price = null,}) {
  return _then(_ShopItem(
shopItemId: null == shopItemId ? _self.shopItemId : shopItemId // ignore: cast_nullable_to_non_nullable
as int,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int,itemName: null == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$BannerItem {

 int get bannerItemId; int get bannerId; int? get itemId; String get itemName; String? get description; String? get category; String? get imageUrl; int get multiplier; GachaType get type;
/// Create a copy of BannerItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BannerItemCopyWith<BannerItem> get copyWith => _$BannerItemCopyWithImpl<BannerItem>(this as BannerItem, _$identity);

  /// Serializes this BannerItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BannerItem&&(identical(other.bannerItemId, bannerItemId) || other.bannerItemId == bannerItemId)&&(identical(other.bannerId, bannerId) || other.bannerId == bannerId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.multiplier, multiplier) || other.multiplier == multiplier)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bannerItemId,bannerId,itemId,itemName,description,category,imageUrl,multiplier,type);

@override
String toString() {
  return 'BannerItem(bannerItemId: $bannerItemId, bannerId: $bannerId, itemId: $itemId, itemName: $itemName, description: $description, category: $category, imageUrl: $imageUrl, multiplier: $multiplier, type: $type)';
}


}

/// @nodoc
abstract mixin class $BannerItemCopyWith<$Res>  {
  factory $BannerItemCopyWith(BannerItem value, $Res Function(BannerItem) _then) = _$BannerItemCopyWithImpl;
@useResult
$Res call({
 int bannerItemId, int bannerId, int? itemId, String itemName, String? description, String? category, String? imageUrl, int multiplier, GachaType type
});




}
/// @nodoc
class _$BannerItemCopyWithImpl<$Res>
    implements $BannerItemCopyWith<$Res> {
  _$BannerItemCopyWithImpl(this._self, this._then);

  final BannerItem _self;
  final $Res Function(BannerItem) _then;

/// Create a copy of BannerItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bannerItemId = null,Object? bannerId = null,Object? itemId = freezed,Object? itemName = null,Object? description = freezed,Object? category = freezed,Object? imageUrl = freezed,Object? multiplier = null,Object? type = null,}) {
  return _then(_self.copyWith(
bannerItemId: null == bannerItemId ? _self.bannerItemId : bannerItemId // ignore: cast_nullable_to_non_nullable
as int,bannerId: null == bannerId ? _self.bannerId : bannerId // ignore: cast_nullable_to_non_nullable
as int,itemId: freezed == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int?,itemName: null == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,multiplier: null == multiplier ? _self.multiplier : multiplier // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as GachaType,
  ));
}

}


/// Adds pattern-matching-related methods to [BannerItem].
extension BannerItemPatterns on BannerItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BannerItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BannerItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BannerItem value)  $default,){
final _that = this;
switch (_that) {
case _BannerItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BannerItem value)?  $default,){
final _that = this;
switch (_that) {
case _BannerItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int bannerItemId,  int bannerId,  int? itemId,  String itemName,  String? description,  String? category,  String? imageUrl,  int multiplier,  GachaType type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BannerItem() when $default != null:
return $default(_that.bannerItemId,_that.bannerId,_that.itemId,_that.itemName,_that.description,_that.category,_that.imageUrl,_that.multiplier,_that.type);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int bannerItemId,  int bannerId,  int? itemId,  String itemName,  String? description,  String? category,  String? imageUrl,  int multiplier,  GachaType type)  $default,) {final _that = this;
switch (_that) {
case _BannerItem():
return $default(_that.bannerItemId,_that.bannerId,_that.itemId,_that.itemName,_that.description,_that.category,_that.imageUrl,_that.multiplier,_that.type);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int bannerItemId,  int bannerId,  int? itemId,  String itemName,  String? description,  String? category,  String? imageUrl,  int multiplier,  GachaType type)?  $default,) {final _that = this;
switch (_that) {
case _BannerItem() when $default != null:
return $default(_that.bannerItemId,_that.bannerId,_that.itemId,_that.itemName,_that.description,_that.category,_that.imageUrl,_that.multiplier,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BannerItem implements BannerItem {
  const _BannerItem({required this.bannerItemId, required this.bannerId, this.itemId, required this.itemName, this.description, this.category, this.imageUrl, required this.multiplier, required this.type});
  factory _BannerItem.fromJson(Map<String, dynamic> json) => _$BannerItemFromJson(json);

@override final  int bannerItemId;
@override final  int bannerId;
@override final  int? itemId;
@override final  String itemName;
@override final  String? description;
@override final  String? category;
@override final  String? imageUrl;
@override final  int multiplier;
@override final  GachaType type;

/// Create a copy of BannerItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BannerItemCopyWith<_BannerItem> get copyWith => __$BannerItemCopyWithImpl<_BannerItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BannerItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BannerItem&&(identical(other.bannerItemId, bannerItemId) || other.bannerItemId == bannerItemId)&&(identical(other.bannerId, bannerId) || other.bannerId == bannerId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.multiplier, multiplier) || other.multiplier == multiplier)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bannerItemId,bannerId,itemId,itemName,description,category,imageUrl,multiplier,type);

@override
String toString() {
  return 'BannerItem(bannerItemId: $bannerItemId, bannerId: $bannerId, itemId: $itemId, itemName: $itemName, description: $description, category: $category, imageUrl: $imageUrl, multiplier: $multiplier, type: $type)';
}


}

/// @nodoc
abstract mixin class _$BannerItemCopyWith<$Res> implements $BannerItemCopyWith<$Res> {
  factory _$BannerItemCopyWith(_BannerItem value, $Res Function(_BannerItem) _then) = __$BannerItemCopyWithImpl;
@override @useResult
$Res call({
 int bannerItemId, int bannerId, int? itemId, String itemName, String? description, String? category, String? imageUrl, int multiplier, GachaType type
});




}
/// @nodoc
class __$BannerItemCopyWithImpl<$Res>
    implements _$BannerItemCopyWith<$Res> {
  __$BannerItemCopyWithImpl(this._self, this._then);

  final _BannerItem _self;
  final $Res Function(_BannerItem) _then;

/// Create a copy of BannerItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bannerItemId = null,Object? bannerId = null,Object? itemId = freezed,Object? itemName = null,Object? description = freezed,Object? category = freezed,Object? imageUrl = freezed,Object? multiplier = null,Object? type = null,}) {
  return _then(_BannerItem(
bannerItemId: null == bannerItemId ? _self.bannerItemId : bannerItemId // ignore: cast_nullable_to_non_nullable
as int,bannerId: null == bannerId ? _self.bannerId : bannerId // ignore: cast_nullable_to_non_nullable
as int,itemId: freezed == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int?,itemName: null == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,multiplier: null == multiplier ? _self.multiplier : multiplier // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as GachaType,
  ));
}


}


/// @nodoc
mixin _$Banner {

 int get bannerId; String get name; DateTime get startTime; DateTime get endTime; String? get description; int get gachaCost; DateTime get createdAt; String? get bannerImgUrl; bool get isActive;
/// Create a copy of Banner
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BannerCopyWith<Banner> get copyWith => _$BannerCopyWithImpl<Banner>(this as Banner, _$identity);

  /// Serializes this Banner to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Banner&&(identical(other.bannerId, bannerId) || other.bannerId == bannerId)&&(identical(other.name, name) || other.name == name)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.description, description) || other.description == description)&&(identical(other.gachaCost, gachaCost) || other.gachaCost == gachaCost)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.bannerImgUrl, bannerImgUrl) || other.bannerImgUrl == bannerImgUrl)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bannerId,name,startTime,endTime,description,gachaCost,createdAt,bannerImgUrl,isActive);

@override
String toString() {
  return 'Banner(bannerId: $bannerId, name: $name, startTime: $startTime, endTime: $endTime, description: $description, gachaCost: $gachaCost, createdAt: $createdAt, bannerImgUrl: $bannerImgUrl, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $BannerCopyWith<$Res>  {
  factory $BannerCopyWith(Banner value, $Res Function(Banner) _then) = _$BannerCopyWithImpl;
@useResult
$Res call({
 int bannerId, String name, DateTime startTime, DateTime endTime, String? description, int gachaCost, DateTime createdAt, String? bannerImgUrl, bool isActive
});




}
/// @nodoc
class _$BannerCopyWithImpl<$Res>
    implements $BannerCopyWith<$Res> {
  _$BannerCopyWithImpl(this._self, this._then);

  final Banner _self;
  final $Res Function(Banner) _then;

/// Create a copy of Banner
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bannerId = null,Object? name = null,Object? startTime = null,Object? endTime = null,Object? description = freezed,Object? gachaCost = null,Object? createdAt = null,Object? bannerImgUrl = freezed,Object? isActive = null,}) {
  return _then(_self.copyWith(
bannerId: null == bannerId ? _self.bannerId : bannerId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,gachaCost: null == gachaCost ? _self.gachaCost : gachaCost // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,bannerImgUrl: freezed == bannerImgUrl ? _self.bannerImgUrl : bannerImgUrl // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Banner].
extension BannerPatterns on Banner {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Banner value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Banner() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Banner value)  $default,){
final _that = this;
switch (_that) {
case _Banner():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Banner value)?  $default,){
final _that = this;
switch (_that) {
case _Banner() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int bannerId,  String name,  DateTime startTime,  DateTime endTime,  String? description,  int gachaCost,  DateTime createdAt,  String? bannerImgUrl,  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Banner() when $default != null:
return $default(_that.bannerId,_that.name,_that.startTime,_that.endTime,_that.description,_that.gachaCost,_that.createdAt,_that.bannerImgUrl,_that.isActive);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int bannerId,  String name,  DateTime startTime,  DateTime endTime,  String? description,  int gachaCost,  DateTime createdAt,  String? bannerImgUrl,  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _Banner():
return $default(_that.bannerId,_that.name,_that.startTime,_that.endTime,_that.description,_that.gachaCost,_that.createdAt,_that.bannerImgUrl,_that.isActive);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int bannerId,  String name,  DateTime startTime,  DateTime endTime,  String? description,  int gachaCost,  DateTime createdAt,  String? bannerImgUrl,  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _Banner() when $default != null:
return $default(_that.bannerId,_that.name,_that.startTime,_that.endTime,_that.description,_that.gachaCost,_that.createdAt,_that.bannerImgUrl,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Banner implements Banner {
  const _Banner({required this.bannerId, required this.name, required this.startTime, required this.endTime, this.description, required this.gachaCost, required this.createdAt, this.bannerImgUrl, required this.isActive});
  factory _Banner.fromJson(Map<String, dynamic> json) => _$BannerFromJson(json);

@override final  int bannerId;
@override final  String name;
@override final  DateTime startTime;
@override final  DateTime endTime;
@override final  String? description;
@override final  int gachaCost;
@override final  DateTime createdAt;
@override final  String? bannerImgUrl;
@override final  bool isActive;

/// Create a copy of Banner
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BannerCopyWith<_Banner> get copyWith => __$BannerCopyWithImpl<_Banner>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BannerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Banner&&(identical(other.bannerId, bannerId) || other.bannerId == bannerId)&&(identical(other.name, name) || other.name == name)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.description, description) || other.description == description)&&(identical(other.gachaCost, gachaCost) || other.gachaCost == gachaCost)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.bannerImgUrl, bannerImgUrl) || other.bannerImgUrl == bannerImgUrl)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bannerId,name,startTime,endTime,description,gachaCost,createdAt,bannerImgUrl,isActive);

@override
String toString() {
  return 'Banner(bannerId: $bannerId, name: $name, startTime: $startTime, endTime: $endTime, description: $description, gachaCost: $gachaCost, createdAt: $createdAt, bannerImgUrl: $bannerImgUrl, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$BannerCopyWith<$Res> implements $BannerCopyWith<$Res> {
  factory _$BannerCopyWith(_Banner value, $Res Function(_Banner) _then) = __$BannerCopyWithImpl;
@override @useResult
$Res call({
 int bannerId, String name, DateTime startTime, DateTime endTime, String? description, int gachaCost, DateTime createdAt, String? bannerImgUrl, bool isActive
});




}
/// @nodoc
class __$BannerCopyWithImpl<$Res>
    implements _$BannerCopyWith<$Res> {
  __$BannerCopyWithImpl(this._self, this._then);

  final _Banner _self;
  final $Res Function(_Banner) _then;

/// Create a copy of Banner
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bannerId = null,Object? name = null,Object? startTime = null,Object? endTime = null,Object? description = freezed,Object? gachaCost = null,Object? createdAt = null,Object? bannerImgUrl = freezed,Object? isActive = null,}) {
  return _then(_Banner(
bannerId: null == bannerId ? _self.bannerId : bannerId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,gachaCost: null == gachaCost ? _self.gachaCost : gachaCost // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,bannerImgUrl: freezed == bannerImgUrl ? _self.bannerImgUrl : bannerImgUrl // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
