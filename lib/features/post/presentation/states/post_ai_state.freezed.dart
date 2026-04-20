// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_ai_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PostAIState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostAIState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostAIState()';
}


}

/// @nodoc
class $PostAIStateCopyWith<$Res>  {
$PostAIStateCopyWith(PostAIState _, $Res Function(PostAIState) __);
}


/// Adds pattern-matching-related methods to [PostAIState].
extension PostAIStatePatterns on PostAIState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Idle value)?  idle,TResult Function( _Loading value)?  loading,TResult Function( _Summarized value)?  summarized,TResult Function( _Translated value)?  translated,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Idle() when idle != null:
return idle(_that);case _Loading() when loading != null:
return loading(_that);case _Summarized() when summarized != null:
return summarized(_that);case _Translated() when translated != null:
return translated(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Idle value)  idle,required TResult Function( _Loading value)  loading,required TResult Function( _Summarized value)  summarized,required TResult Function( _Translated value)  translated,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Idle():
return idle(_that);case _Loading():
return loading(_that);case _Summarized():
return summarized(_that);case _Translated():
return translated(_that);case _Error():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Idle value)?  idle,TResult? Function( _Loading value)?  loading,TResult? Function( _Summarized value)?  summarized,TResult? Function( _Translated value)?  translated,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Idle() when idle != null:
return idle(_that);case _Loading() when loading != null:
return loading(_that);case _Summarized() when summarized != null:
return summarized(_that);case _Translated() when translated != null:
return translated(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  idle,TResult Function()?  loading,TResult Function( SummaryResponse summary)?  summarized,TResult Function( TranslationResponse translation)?  translated,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Idle() when idle != null:
return idle();case _Loading() when loading != null:
return loading();case _Summarized() when summarized != null:
return summarized(_that.summary);case _Translated() when translated != null:
return translated(_that.translation);case _Error() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  idle,required TResult Function()  loading,required TResult Function( SummaryResponse summary)  summarized,required TResult Function( TranslationResponse translation)  translated,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Idle():
return idle();case _Loading():
return loading();case _Summarized():
return summarized(_that.summary);case _Translated():
return translated(_that.translation);case _Error():
return error(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  idle,TResult? Function()?  loading,TResult? Function( SummaryResponse summary)?  summarized,TResult? Function( TranslationResponse translation)?  translated,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Idle() when idle != null:
return idle();case _Loading() when loading != null:
return loading();case _Summarized() when summarized != null:
return summarized(_that.summary);case _Translated() when translated != null:
return translated(_that.translation);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Idle implements PostAIState {
  const _Idle();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Idle);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostAIState.idle()';
}


}




/// @nodoc


class _Loading implements PostAIState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostAIState.loading()';
}


}




/// @nodoc


class _Summarized implements PostAIState {
  const _Summarized(this.summary);
  

 final  SummaryResponse summary;

/// Create a copy of PostAIState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SummarizedCopyWith<_Summarized> get copyWith => __$SummarizedCopyWithImpl<_Summarized>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Summarized&&(identical(other.summary, summary) || other.summary == summary));
}


@override
int get hashCode => Object.hash(runtimeType,summary);

@override
String toString() {
  return 'PostAIState.summarized(summary: $summary)';
}


}

/// @nodoc
abstract mixin class _$SummarizedCopyWith<$Res> implements $PostAIStateCopyWith<$Res> {
  factory _$SummarizedCopyWith(_Summarized value, $Res Function(_Summarized) _then) = __$SummarizedCopyWithImpl;
@useResult
$Res call({
 SummaryResponse summary
});


$SummaryResponseCopyWith<$Res> get summary;

}
/// @nodoc
class __$SummarizedCopyWithImpl<$Res>
    implements _$SummarizedCopyWith<$Res> {
  __$SummarizedCopyWithImpl(this._self, this._then);

  final _Summarized _self;
  final $Res Function(_Summarized) _then;

/// Create a copy of PostAIState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? summary = null,}) {
  return _then(_Summarized(
null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as SummaryResponse,
  ));
}

/// Create a copy of PostAIState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryResponseCopyWith<$Res> get summary {
  
  return $SummaryResponseCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}

/// @nodoc


class _Translated implements PostAIState {
  const _Translated(this.translation);
  

 final  TranslationResponse translation;

/// Create a copy of PostAIState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TranslatedCopyWith<_Translated> get copyWith => __$TranslatedCopyWithImpl<_Translated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Translated&&(identical(other.translation, translation) || other.translation == translation));
}


@override
int get hashCode => Object.hash(runtimeType,translation);

@override
String toString() {
  return 'PostAIState.translated(translation: $translation)';
}


}

/// @nodoc
abstract mixin class _$TranslatedCopyWith<$Res> implements $PostAIStateCopyWith<$Res> {
  factory _$TranslatedCopyWith(_Translated value, $Res Function(_Translated) _then) = __$TranslatedCopyWithImpl;
@useResult
$Res call({
 TranslationResponse translation
});


$TranslationResponseCopyWith<$Res> get translation;

}
/// @nodoc
class __$TranslatedCopyWithImpl<$Res>
    implements _$TranslatedCopyWith<$Res> {
  __$TranslatedCopyWithImpl(this._self, this._then);

  final _Translated _self;
  final $Res Function(_Translated) _then;

/// Create a copy of PostAIState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? translation = null,}) {
  return _then(_Translated(
null == translation ? _self.translation : translation // ignore: cast_nullable_to_non_nullable
as TranslationResponse,
  ));
}

/// Create a copy of PostAIState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TranslationResponseCopyWith<$Res> get translation {
  
  return $TranslationResponseCopyWith<$Res>(_self.translation, (value) {
    return _then(_self.copyWith(translation: value));
  });
}
}

/// @nodoc


class _Error implements PostAIState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of PostAIState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'PostAIState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $PostAIStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of PostAIState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
