// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MemberDetailState {

 Member get member;
/// Create a copy of MemberDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberDetailStateCopyWith<MemberDetailState> get copyWith => _$MemberDetailStateCopyWithImpl<MemberDetailState>(this as MemberDetailState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberDetailState&&(identical(other.member, member) || other.member == member));
}


@override
int get hashCode => Object.hash(runtimeType,member);

@override
String toString() {
  return 'MemberDetailState(member: $member)';
}


}

/// @nodoc
abstract mixin class $MemberDetailStateCopyWith<$Res>  {
  factory $MemberDetailStateCopyWith(MemberDetailState value, $Res Function(MemberDetailState) _then) = _$MemberDetailStateCopyWithImpl;
@useResult
$Res call({
 Member member
});


$MemberCopyWith<$Res> get member;

}
/// @nodoc
class _$MemberDetailStateCopyWithImpl<$Res>
    implements $MemberDetailStateCopyWith<$Res> {
  _$MemberDetailStateCopyWithImpl(this._self, this._then);

  final MemberDetailState _self;
  final $Res Function(MemberDetailState) _then;

/// Create a copy of MemberDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? member = null,}) {
  return _then(_self.copyWith(
member: null == member ? _self.member : member // ignore: cast_nullable_to_non_nullable
as Member,
  ));
}
/// Create a copy of MemberDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemberCopyWith<$Res> get member {
  
  return $MemberCopyWith<$Res>(_self.member, (value) {
    return _then(_self.copyWith(member: value));
  });
}
}


/// Adds pattern-matching-related methods to [MemberDetailState].
extension MemberDetailStatePatterns on MemberDetailState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Member member)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Loaded() when loaded != null:
return loaded(_that.member);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Member member)  loaded,}) {final _that = this;
switch (_that) {
case _Loaded():
return loaded(_that.member);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Member member)?  loaded,}) {final _that = this;
switch (_that) {
case _Loaded() when loaded != null:
return loaded(_that.member);case _:
  return null;

}
}

}

/// @nodoc


class _Loaded implements MemberDetailState {
  const _Loaded(this.member);
  

@override final  Member member;

/// Create a copy of MemberDetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.member, member) || other.member == member));
}


@override
int get hashCode => Object.hash(runtimeType,member);

@override
String toString() {
  return 'MemberDetailState.loaded(member: $member)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $MemberDetailStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@override @useResult
$Res call({
 Member member
});


@override $MemberCopyWith<$Res> get member;

}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of MemberDetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? member = null,}) {
  return _then(_Loaded(
null == member ? _self.member : member // ignore: cast_nullable_to_non_nullable
as Member,
  ));
}

/// Create a copy of MemberDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemberCopyWith<$Res> get member {
  
  return $MemberCopyWith<$Res>(_self.member, (value) {
    return _then(_self.copyWith(member: value));
  });
}
}

// dart format on
