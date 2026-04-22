// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BannerState {

 Banner get banner; List<BannerItem> get items;
/// Create a copy of BannerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BannerStateCopyWith<BannerState> get copyWith => _$BannerStateCopyWithImpl<BannerState>(this as BannerState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BannerState&&(identical(other.banner, banner) || other.banner == banner)&&const DeepCollectionEquality().equals(other.items, items));
}


@override
int get hashCode => Object.hash(runtimeType,banner,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'BannerState(banner: $banner, items: $items)';
}


}

/// @nodoc
abstract mixin class $BannerStateCopyWith<$Res>  {
  factory $BannerStateCopyWith(BannerState value, $Res Function(BannerState) _then) = _$BannerStateCopyWithImpl;
@useResult
$Res call({
 Banner banner, List<BannerItem> items
});


$BannerCopyWith<$Res> get banner;

}
/// @nodoc
class _$BannerStateCopyWithImpl<$Res>
    implements $BannerStateCopyWith<$Res> {
  _$BannerStateCopyWithImpl(this._self, this._then);

  final BannerState _self;
  final $Res Function(BannerState) _then;

/// Create a copy of BannerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? banner = null,Object? items = null,}) {
  return _then(_self.copyWith(
banner: null == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as Banner,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<BannerItem>,
  ));
}
/// Create a copy of BannerState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BannerCopyWith<$Res> get banner {
  
  return $BannerCopyWith<$Res>(_self.banner, (value) {
    return _then(_self.copyWith(banner: value));
  });
}
}


/// Adds pattern-matching-related methods to [BannerState].
extension BannerStatePatterns on BannerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Ready value)?  ready,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Ready() when ready != null:
return ready(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Ready value)  ready,}){
final _that = this;
switch (_that) {
case _Ready():
return ready(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Ready value)?  ready,}){
final _that = this;
switch (_that) {
case _Ready() when ready != null:
return ready(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Banner banner,  List<BannerItem> items)?  ready,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Ready() when ready != null:
return ready(_that.banner,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Banner banner,  List<BannerItem> items)  ready,}) {final _that = this;
switch (_that) {
case _Ready():
return ready(_that.banner,_that.items);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Banner banner,  List<BannerItem> items)?  ready,}) {final _that = this;
switch (_that) {
case _Ready() when ready != null:
return ready(_that.banner,_that.items);case _:
  return null;

}
}

}

/// @nodoc


class _Ready implements BannerState {
  const _Ready({required this.banner, required final  List<BannerItem> items}): _items = items;
  

@override final  Banner banner;
 final  List<BannerItem> _items;
@override List<BannerItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of BannerState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReadyCopyWith<_Ready> get copyWith => __$ReadyCopyWithImpl<_Ready>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Ready&&(identical(other.banner, banner) || other.banner == banner)&&const DeepCollectionEquality().equals(other._items, _items));
}


@override
int get hashCode => Object.hash(runtimeType,banner,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'BannerState.ready(banner: $banner, items: $items)';
}


}

/// @nodoc
abstract mixin class _$ReadyCopyWith<$Res> implements $BannerStateCopyWith<$Res> {
  factory _$ReadyCopyWith(_Ready value, $Res Function(_Ready) _then) = __$ReadyCopyWithImpl;
@override @useResult
$Res call({
 Banner banner, List<BannerItem> items
});


@override $BannerCopyWith<$Res> get banner;

}
/// @nodoc
class __$ReadyCopyWithImpl<$Res>
    implements _$ReadyCopyWith<$Res> {
  __$ReadyCopyWithImpl(this._self, this._then);

  final _Ready _self;
  final $Res Function(_Ready) _then;

/// Create a copy of BannerState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? banner = null,Object? items = null,}) {
  return _then(_Ready(
banner: null == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as Banner,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<BannerItem>,
  ));
}

/// Create a copy of BannerState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BannerCopyWith<$Res> get banner {
  
  return $BannerCopyWith<$Res>(_self.banner, (value) {
    return _then(_self.copyWith(banner: value));
  });
}
}

// dart format on
