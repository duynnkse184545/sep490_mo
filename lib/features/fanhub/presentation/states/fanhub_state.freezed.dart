// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fanhub_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FanHubState {

 FanHubTab get activeTab;
/// Create a copy of FanHubState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FanHubStateCopyWith<FanHubState> get copyWith => _$FanHubStateCopyWithImpl<FanHubState>(this as FanHubState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FanHubState&&(identical(other.activeTab, activeTab) || other.activeTab == activeTab));
}


@override
int get hashCode => Object.hash(runtimeType,activeTab);

@override
String toString() {
  return 'FanHubState(activeTab: $activeTab)';
}


}

/// @nodoc
abstract mixin class $FanHubStateCopyWith<$Res>  {
  factory $FanHubStateCopyWith(FanHubState value, $Res Function(FanHubState) _then) = _$FanHubStateCopyWithImpl;
@useResult
$Res call({
 FanHubTab activeTab
});




}
/// @nodoc
class _$FanHubStateCopyWithImpl<$Res>
    implements $FanHubStateCopyWith<$Res> {
  _$FanHubStateCopyWithImpl(this._self, this._then);

  final FanHubState _self;
  final $Res Function(FanHubState) _then;

/// Create a copy of FanHubState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? activeTab = null,}) {
  return _then(_self.copyWith(
activeTab: null == activeTab ? _self.activeTab : activeTab // ignore: cast_nullable_to_non_nullable
as FanHubTab,
  ));
}

}


/// Adds pattern-matching-related methods to [FanHubState].
extension FanHubStatePatterns on FanHubState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Ready value)?  ready,TResult Function( _Refreshing value)?  refreshing,TResult Function( _LoadingMore value)?  loadingMore,TResult Function( _Empty value)?  empty,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Ready() when ready != null:
return ready(_that);case _Refreshing() when refreshing != null:
return refreshing(_that);case _LoadingMore() when loadingMore != null:
return loadingMore(_that);case _Empty() when empty != null:
return empty(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Ready value)  ready,required TResult Function( _Refreshing value)  refreshing,required TResult Function( _LoadingMore value)  loadingMore,required TResult Function( _Empty value)  empty,}){
final _that = this;
switch (_that) {
case _Ready():
return ready(_that);case _Refreshing():
return refreshing(_that);case _LoadingMore():
return loadingMore(_that);case _Empty():
return empty(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Ready value)?  ready,TResult? Function( _Refreshing value)?  refreshing,TResult? Function( _LoadingMore value)?  loadingMore,TResult? Function( _Empty value)?  empty,}){
final _that = this;
switch (_that) {
case _Ready() when ready != null:
return ready(_that);case _Refreshing() when refreshing != null:
return refreshing(_that);case _LoadingMore() when loadingMore != null:
return loadingMore(_that);case _Empty() when empty != null:
return empty(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<FanHub> fanHubs,  FanHubTab activeTab)?  ready,TResult Function( List<FanHub> fanHubs,  FanHubTab activeTab)?  refreshing,TResult Function( List<FanHub> fanHubs,  FanHubTab activeTab)?  loadingMore,TResult Function( FanHubTab activeTab)?  empty,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Ready() when ready != null:
return ready(_that.fanHubs,_that.activeTab);case _Refreshing() when refreshing != null:
return refreshing(_that.fanHubs,_that.activeTab);case _LoadingMore() when loadingMore != null:
return loadingMore(_that.fanHubs,_that.activeTab);case _Empty() when empty != null:
return empty(_that.activeTab);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<FanHub> fanHubs,  FanHubTab activeTab)  ready,required TResult Function( List<FanHub> fanHubs,  FanHubTab activeTab)  refreshing,required TResult Function( List<FanHub> fanHubs,  FanHubTab activeTab)  loadingMore,required TResult Function( FanHubTab activeTab)  empty,}) {final _that = this;
switch (_that) {
case _Ready():
return ready(_that.fanHubs,_that.activeTab);case _Refreshing():
return refreshing(_that.fanHubs,_that.activeTab);case _LoadingMore():
return loadingMore(_that.fanHubs,_that.activeTab);case _Empty():
return empty(_that.activeTab);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<FanHub> fanHubs,  FanHubTab activeTab)?  ready,TResult? Function( List<FanHub> fanHubs,  FanHubTab activeTab)?  refreshing,TResult? Function( List<FanHub> fanHubs,  FanHubTab activeTab)?  loadingMore,TResult? Function( FanHubTab activeTab)?  empty,}) {final _that = this;
switch (_that) {
case _Ready() when ready != null:
return ready(_that.fanHubs,_that.activeTab);case _Refreshing() when refreshing != null:
return refreshing(_that.fanHubs,_that.activeTab);case _LoadingMore() when loadingMore != null:
return loadingMore(_that.fanHubs,_that.activeTab);case _Empty() when empty != null:
return empty(_that.activeTab);case _:
  return null;

}
}

}

/// @nodoc


class _Ready implements FanHubState {
  const _Ready(final  List<FanHub> fanHubs, this.activeTab): _fanHubs = fanHubs;
  

 final  List<FanHub> _fanHubs;
 List<FanHub> get fanHubs {
  if (_fanHubs is EqualUnmodifiableListView) return _fanHubs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fanHubs);
}

@override final  FanHubTab activeTab;

/// Create a copy of FanHubState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReadyCopyWith<_Ready> get copyWith => __$ReadyCopyWithImpl<_Ready>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Ready&&const DeepCollectionEquality().equals(other._fanHubs, _fanHubs)&&(identical(other.activeTab, activeTab) || other.activeTab == activeTab));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_fanHubs),activeTab);

@override
String toString() {
  return 'FanHubState.ready(fanHubs: $fanHubs, activeTab: $activeTab)';
}


}

/// @nodoc
abstract mixin class _$ReadyCopyWith<$Res> implements $FanHubStateCopyWith<$Res> {
  factory _$ReadyCopyWith(_Ready value, $Res Function(_Ready) _then) = __$ReadyCopyWithImpl;
@override @useResult
$Res call({
 List<FanHub> fanHubs, FanHubTab activeTab
});




}
/// @nodoc
class __$ReadyCopyWithImpl<$Res>
    implements _$ReadyCopyWith<$Res> {
  __$ReadyCopyWithImpl(this._self, this._then);

  final _Ready _self;
  final $Res Function(_Ready) _then;

/// Create a copy of FanHubState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fanHubs = null,Object? activeTab = null,}) {
  return _then(_Ready(
null == fanHubs ? _self._fanHubs : fanHubs // ignore: cast_nullable_to_non_nullable
as List<FanHub>,null == activeTab ? _self.activeTab : activeTab // ignore: cast_nullable_to_non_nullable
as FanHubTab,
  ));
}


}

/// @nodoc


class _Refreshing implements FanHubState {
  const _Refreshing(final  List<FanHub> fanHubs, this.activeTab): _fanHubs = fanHubs;
  

 final  List<FanHub> _fanHubs;
 List<FanHub> get fanHubs {
  if (_fanHubs is EqualUnmodifiableListView) return _fanHubs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fanHubs);
}

@override final  FanHubTab activeTab;

/// Create a copy of FanHubState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefreshingCopyWith<_Refreshing> get copyWith => __$RefreshingCopyWithImpl<_Refreshing>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Refreshing&&const DeepCollectionEquality().equals(other._fanHubs, _fanHubs)&&(identical(other.activeTab, activeTab) || other.activeTab == activeTab));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_fanHubs),activeTab);

@override
String toString() {
  return 'FanHubState.refreshing(fanHubs: $fanHubs, activeTab: $activeTab)';
}


}

/// @nodoc
abstract mixin class _$RefreshingCopyWith<$Res> implements $FanHubStateCopyWith<$Res> {
  factory _$RefreshingCopyWith(_Refreshing value, $Res Function(_Refreshing) _then) = __$RefreshingCopyWithImpl;
@override @useResult
$Res call({
 List<FanHub> fanHubs, FanHubTab activeTab
});




}
/// @nodoc
class __$RefreshingCopyWithImpl<$Res>
    implements _$RefreshingCopyWith<$Res> {
  __$RefreshingCopyWithImpl(this._self, this._then);

  final _Refreshing _self;
  final $Res Function(_Refreshing) _then;

/// Create a copy of FanHubState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fanHubs = null,Object? activeTab = null,}) {
  return _then(_Refreshing(
null == fanHubs ? _self._fanHubs : fanHubs // ignore: cast_nullable_to_non_nullable
as List<FanHub>,null == activeTab ? _self.activeTab : activeTab // ignore: cast_nullable_to_non_nullable
as FanHubTab,
  ));
}


}

/// @nodoc


class _LoadingMore implements FanHubState {
  const _LoadingMore(final  List<FanHub> fanHubs, this.activeTab): _fanHubs = fanHubs;
  

 final  List<FanHub> _fanHubs;
 List<FanHub> get fanHubs {
  if (_fanHubs is EqualUnmodifiableListView) return _fanHubs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fanHubs);
}

@override final  FanHubTab activeTab;

/// Create a copy of FanHubState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadingMoreCopyWith<_LoadingMore> get copyWith => __$LoadingMoreCopyWithImpl<_LoadingMore>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingMore&&const DeepCollectionEquality().equals(other._fanHubs, _fanHubs)&&(identical(other.activeTab, activeTab) || other.activeTab == activeTab));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_fanHubs),activeTab);

@override
String toString() {
  return 'FanHubState.loadingMore(fanHubs: $fanHubs, activeTab: $activeTab)';
}


}

/// @nodoc
abstract mixin class _$LoadingMoreCopyWith<$Res> implements $FanHubStateCopyWith<$Res> {
  factory _$LoadingMoreCopyWith(_LoadingMore value, $Res Function(_LoadingMore) _then) = __$LoadingMoreCopyWithImpl;
@override @useResult
$Res call({
 List<FanHub> fanHubs, FanHubTab activeTab
});




}
/// @nodoc
class __$LoadingMoreCopyWithImpl<$Res>
    implements _$LoadingMoreCopyWith<$Res> {
  __$LoadingMoreCopyWithImpl(this._self, this._then);

  final _LoadingMore _self;
  final $Res Function(_LoadingMore) _then;

/// Create a copy of FanHubState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fanHubs = null,Object? activeTab = null,}) {
  return _then(_LoadingMore(
null == fanHubs ? _self._fanHubs : fanHubs // ignore: cast_nullable_to_non_nullable
as List<FanHub>,null == activeTab ? _self.activeTab : activeTab // ignore: cast_nullable_to_non_nullable
as FanHubTab,
  ));
}


}

/// @nodoc


class _Empty implements FanHubState {
  const _Empty(this.activeTab);
  

@override final  FanHubTab activeTab;

/// Create a copy of FanHubState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmptyCopyWith<_Empty> get copyWith => __$EmptyCopyWithImpl<_Empty>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Empty&&(identical(other.activeTab, activeTab) || other.activeTab == activeTab));
}


@override
int get hashCode => Object.hash(runtimeType,activeTab);

@override
String toString() {
  return 'FanHubState.empty(activeTab: $activeTab)';
}


}

/// @nodoc
abstract mixin class _$EmptyCopyWith<$Res> implements $FanHubStateCopyWith<$Res> {
  factory _$EmptyCopyWith(_Empty value, $Res Function(_Empty) _then) = __$EmptyCopyWithImpl;
@override @useResult
$Res call({
 FanHubTab activeTab
});




}
/// @nodoc
class __$EmptyCopyWithImpl<$Res>
    implements _$EmptyCopyWith<$Res> {
  __$EmptyCopyWithImpl(this._self, this._then);

  final _Empty _self;
  final $Res Function(_Empty) _then;

/// Create a copy of FanHubState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activeTab = null,}) {
  return _then(_Empty(
null == activeTab ? _self.activeTab : activeTab // ignore: cast_nullable_to_non_nullable
as FanHubTab,
  ));
}


}

// dart format on
