// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ApiResponse<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiResponse<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiResponse<$T>()';
}


}

/// @nodoc
class $ApiResponseCopyWith<T,$Res>  {
$ApiResponseCopyWith(ApiResponse<T> _, $Res Function(ApiResponse<T>) __);
}


/// Adds pattern-matching-related methods to [ApiResponse].
extension ApiResponsePatterns<T> on ApiResponse<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ApiResponseSuccess<T> value)?  success,TResult Function( ApiResponseFailure<T> value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ApiResponseSuccess() when success != null:
return success(_that);case ApiResponseFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ApiResponseSuccess<T> value)  success,required TResult Function( ApiResponseFailure<T> value)  failure,}){
final _that = this;
switch (_that) {
case ApiResponseSuccess():
return success(_that);case ApiResponseFailure():
return failure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ApiResponseSuccess<T> value)?  success,TResult? Function( ApiResponseFailure<T> value)?  failure,}){
final _that = this;
switch (_that) {
case ApiResponseSuccess() when success != null:
return success(_that);case ApiResponseFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( T data)?  success,TResult Function( String message,  int? error)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ApiResponseSuccess() when success != null:
return success(_that.data);case ApiResponseFailure() when failure != null:
return failure(_that.message,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( T data)  success,required TResult Function( String message,  int? error)  failure,}) {final _that = this;
switch (_that) {
case ApiResponseSuccess():
return success(_that.data);case ApiResponseFailure():
return failure(_that.message,_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( T data)?  success,TResult? Function( String message,  int? error)?  failure,}) {final _that = this;
switch (_that) {
case ApiResponseSuccess() when success != null:
return success(_that.data);case ApiResponseFailure() when failure != null:
return failure(_that.message,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class ApiResponseSuccess<T> implements ApiResponse<T> {
  const ApiResponseSuccess({required this.data});
  

 final  T data;

/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiResponseSuccessCopyWith<T, ApiResponseSuccess<T>> get copyWith => _$ApiResponseSuccessCopyWithImpl<T, ApiResponseSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiResponseSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ApiResponse<$T>.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $ApiResponseSuccessCopyWith<T,$Res> implements $ApiResponseCopyWith<T, $Res> {
  factory $ApiResponseSuccessCopyWith(ApiResponseSuccess<T> value, $Res Function(ApiResponseSuccess<T>) _then) = _$ApiResponseSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$ApiResponseSuccessCopyWithImpl<T,$Res>
    implements $ApiResponseSuccessCopyWith<T, $Res> {
  _$ApiResponseSuccessCopyWithImpl(this._self, this._then);

  final ApiResponseSuccess<T> _self;
  final $Res Function(ApiResponseSuccess<T>) _then;

/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(ApiResponseSuccess<T>(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class ApiResponseFailure<T> implements ApiResponse<T> {
  const ApiResponseFailure({required this.message, this.error});
  

 final  String message;
// this is actually data field from API
 final  int? error;

/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiResponseFailureCopyWith<T, ApiResponseFailure<T>> get copyWith => _$ApiResponseFailureCopyWithImpl<T, ApiResponseFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiResponseFailure<T>&&(identical(other.message, message) || other.message == message)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,message,error);

@override
String toString() {
  return 'ApiResponse<$T>.failure(message: $message, error: $error)';
}


}

/// @nodoc
abstract mixin class $ApiResponseFailureCopyWith<T,$Res> implements $ApiResponseCopyWith<T, $Res> {
  factory $ApiResponseFailureCopyWith(ApiResponseFailure<T> value, $Res Function(ApiResponseFailure<T>) _then) = _$ApiResponseFailureCopyWithImpl;
@useResult
$Res call({
 String message, int? error
});




}
/// @nodoc
class _$ApiResponseFailureCopyWithImpl<T,$Res>
    implements $ApiResponseFailureCopyWith<T, $Res> {
  _$ApiResponseFailureCopyWithImpl(this._self, this._then);

  final ApiResponseFailure<T> _self;
  final $Res Function(ApiResponseFailure<T>) _then;

/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,Object? error = freezed,}) {
  return _then(ApiResponseFailure<T>(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
