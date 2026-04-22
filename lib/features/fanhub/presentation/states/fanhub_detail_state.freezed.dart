// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fanhub_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FanHubDetailState {

 FanHub get fanHub;
/// Create a copy of FanHubDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FanHubDetailStateCopyWith<FanHubDetailState> get copyWith => _$FanHubDetailStateCopyWithImpl<FanHubDetailState>(this as FanHubDetailState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FanHubDetailState&&(identical(other.fanHub, fanHub) || other.fanHub == fanHub));
}


@override
int get hashCode => Object.hash(runtimeType,fanHub);

@override
String toString() {
  return 'FanHubDetailState(fanHub: $fanHub)';
}


}

/// @nodoc
abstract mixin class $FanHubDetailStateCopyWith<$Res>  {
  factory $FanHubDetailStateCopyWith(FanHubDetailState value, $Res Function(FanHubDetailState) _then) = _$FanHubDetailStateCopyWithImpl;
@useResult
$Res call({
 FanHub fanHub
});


$FanHubCopyWith<$Res> get fanHub;

}
/// @nodoc
class _$FanHubDetailStateCopyWithImpl<$Res>
    implements $FanHubDetailStateCopyWith<$Res> {
  _$FanHubDetailStateCopyWithImpl(this._self, this._then);

  final FanHubDetailState _self;
  final $Res Function(FanHubDetailState) _then;

/// Create a copy of FanHubDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fanHub = null,}) {
  return _then(_self.copyWith(
fanHub: null == fanHub ? _self.fanHub : fanHub // ignore: cast_nullable_to_non_nullable
as FanHub,
  ));
}
/// Create a copy of FanHubDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FanHubCopyWith<$Res> get fanHub {
  
  return $FanHubCopyWith<$Res>(_self.fanHub, (value) {
    return _then(_self.copyWith(fanHub: value));
  });
}
}


/// Adds pattern-matching-related methods to [FanHubDetailState].
extension FanHubDetailStatePatterns on FanHubDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Loaded value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Loaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Loaded value)  loaded,}){
final _that = this;
switch (_that) {
case _Loaded():
return loaded(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Loaded value)?  loaded,}){
final _that = this;
switch (_that) {
case _Loaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( FanHub fanHub)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Loaded() when loaded != null:
return loaded(_that.fanHub);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( FanHub fanHub)  loaded,}) {final _that = this;
switch (_that) {
case _Loaded():
return loaded(_that.fanHub);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( FanHub fanHub)?  loaded,}) {final _that = this;
switch (_that) {
case _Loaded() when loaded != null:
return loaded(_that.fanHub);case _:
  return null;

}
}

}

/// @nodoc


class _Loaded implements FanHubDetailState {
  const _Loaded(this.fanHub);
  

@override final  FanHub fanHub;

/// Create a copy of FanHubDetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.fanHub, fanHub) || other.fanHub == fanHub));
}


@override
int get hashCode => Object.hash(runtimeType,fanHub);

@override
String toString() {
  return 'FanHubDetailState.loaded(fanHub: $fanHub)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $FanHubDetailStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@override @useResult
$Res call({
 FanHub fanHub
});


@override $FanHubCopyWith<$Res> get fanHub;

}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of FanHubDetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fanHub = null,}) {
  return _then(_Loaded(
null == fanHub ? _self.fanHub : fanHub // ignore: cast_nullable_to_non_nullable
as FanHub,
  ));
}

/// Create a copy of FanHubDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FanHubCopyWith<$Res> get fanHub {
  
  return $FanHubCopyWith<$Res>(_self.fanHub, (value) {
    return _then(_self.copyWith(fanHub: value));
  });
}
}

// dart format on
