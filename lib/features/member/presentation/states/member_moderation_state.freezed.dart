// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_moderation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MemberModerationState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberModerationState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MemberModerationState()';
}


}

/// @nodoc
class $MemberModerationStateCopyWith<$Res>  {
$MemberModerationStateCopyWith(MemberModerationState _, $Res Function(MemberModerationState) __);
}


/// Adds pattern-matching-related methods to [MemberModerationState].
extension MemberModerationStatePatterns on MemberModerationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Ready value)?  ready,TResult Function( _LoadingMore value)?  loadingMore,TResult Function( _Empty value)?  empty,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Ready() when ready != null:
return ready(_that);case _LoadingMore() when loadingMore != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Ready value)  ready,required TResult Function( _LoadingMore value)  loadingMore,required TResult Function( _Empty value)  empty,}){
final _that = this;
switch (_that) {
case _Ready():
return ready(_that);case _LoadingMore():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Ready value)?  ready,TResult? Function( _LoadingMore value)?  loadingMore,TResult? Function( _Empty value)?  empty,}){
final _that = this;
switch (_that) {
case _Ready() when ready != null:
return ready(_that);case _LoadingMore() when loadingMore != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<MemberWithReports> members)?  ready,TResult Function( List<MemberWithReports> members)?  loadingMore,TResult Function()?  empty,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Ready() when ready != null:
return ready(_that.members);case _LoadingMore() when loadingMore != null:
return loadingMore(_that.members);case _Empty() when empty != null:
return empty();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<MemberWithReports> members)  ready,required TResult Function( List<MemberWithReports> members)  loadingMore,required TResult Function()  empty,}) {final _that = this;
switch (_that) {
case _Ready():
return ready(_that.members);case _LoadingMore():
return loadingMore(_that.members);case _Empty():
return empty();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<MemberWithReports> members)?  ready,TResult? Function( List<MemberWithReports> members)?  loadingMore,TResult? Function()?  empty,}) {final _that = this;
switch (_that) {
case _Ready() when ready != null:
return ready(_that.members);case _LoadingMore() when loadingMore != null:
return loadingMore(_that.members);case _Empty() when empty != null:
return empty();case _:
  return null;

}
}

}

/// @nodoc


class _Ready implements MemberModerationState {
  const _Ready(final  List<MemberWithReports> members): _members = members;
  

 final  List<MemberWithReports> _members;
 List<MemberWithReports> get members {
  if (_members is EqualUnmodifiableListView) return _members;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_members);
}


/// Create a copy of MemberModerationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReadyCopyWith<_Ready> get copyWith => __$ReadyCopyWithImpl<_Ready>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Ready&&const DeepCollectionEquality().equals(other._members, _members));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_members));

@override
String toString() {
  return 'MemberModerationState.ready(members: $members)';
}


}

/// @nodoc
abstract mixin class _$ReadyCopyWith<$Res> implements $MemberModerationStateCopyWith<$Res> {
  factory _$ReadyCopyWith(_Ready value, $Res Function(_Ready) _then) = __$ReadyCopyWithImpl;
@useResult
$Res call({
 List<MemberWithReports> members
});




}
/// @nodoc
class __$ReadyCopyWithImpl<$Res>
    implements _$ReadyCopyWith<$Res> {
  __$ReadyCopyWithImpl(this._self, this._then);

  final _Ready _self;
  final $Res Function(_Ready) _then;

/// Create a copy of MemberModerationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? members = null,}) {
  return _then(_Ready(
null == members ? _self._members : members // ignore: cast_nullable_to_non_nullable
as List<MemberWithReports>,
  ));
}


}

/// @nodoc


class _LoadingMore implements MemberModerationState {
  const _LoadingMore(final  List<MemberWithReports> members): _members = members;
  

 final  List<MemberWithReports> _members;
 List<MemberWithReports> get members {
  if (_members is EqualUnmodifiableListView) return _members;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_members);
}


/// Create a copy of MemberModerationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadingMoreCopyWith<_LoadingMore> get copyWith => __$LoadingMoreCopyWithImpl<_LoadingMore>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingMore&&const DeepCollectionEquality().equals(other._members, _members));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_members));

@override
String toString() {
  return 'MemberModerationState.loadingMore(members: $members)';
}


}

/// @nodoc
abstract mixin class _$LoadingMoreCopyWith<$Res> implements $MemberModerationStateCopyWith<$Res> {
  factory _$LoadingMoreCopyWith(_LoadingMore value, $Res Function(_LoadingMore) _then) = __$LoadingMoreCopyWithImpl;
@useResult
$Res call({
 List<MemberWithReports> members
});




}
/// @nodoc
class __$LoadingMoreCopyWithImpl<$Res>
    implements _$LoadingMoreCopyWith<$Res> {
  __$LoadingMoreCopyWithImpl(this._self, this._then);

  final _LoadingMore _self;
  final $Res Function(_LoadingMore) _then;

/// Create a copy of MemberModerationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? members = null,}) {
  return _then(_LoadingMore(
null == members ? _self._members : members // ignore: cast_nullable_to_non_nullable
as List<MemberWithReports>,
  ));
}


}

/// @nodoc


class _Empty implements MemberModerationState {
  const _Empty();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Empty);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MemberModerationState.empty()';
}


}




// dart format on
