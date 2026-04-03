// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignUpForm {

// Step 1 fields
 String get username; String get email; String get password; String? get usernameError; String? get emailError; String? get passwordError;// Step 2 (OTP)
 String get otp; String? get otpError;// Step 3 fields
 String get displayName; String get confirmPassword; String? get displayNameError; String? get confirmPasswordError;
/// Create a copy of SignUpForm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpFormCopyWith<SignUpForm> get copyWith => _$SignUpFormCopyWithImpl<SignUpForm>(this as SignUpForm, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpForm&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.usernameError, usernameError) || other.usernameError == usernameError)&&(identical(other.emailError, emailError) || other.emailError == emailError)&&(identical(other.passwordError, passwordError) || other.passwordError == passwordError)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.otpError, otpError) || other.otpError == otpError)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.displayNameError, displayNameError) || other.displayNameError == displayNameError)&&(identical(other.confirmPasswordError, confirmPasswordError) || other.confirmPasswordError == confirmPasswordError));
}


@override
int get hashCode => Object.hash(runtimeType,username,email,password,usernameError,emailError,passwordError,otp,otpError,displayName,confirmPassword,displayNameError,confirmPasswordError);

@override
String toString() {
  return 'SignUpForm(username: $username, email: $email, password: $password, usernameError: $usernameError, emailError: $emailError, passwordError: $passwordError, otp: $otp, otpError: $otpError, displayName: $displayName, confirmPassword: $confirmPassword, displayNameError: $displayNameError, confirmPasswordError: $confirmPasswordError)';
}


}

/// @nodoc
abstract mixin class $SignUpFormCopyWith<$Res>  {
  factory $SignUpFormCopyWith(SignUpForm value, $Res Function(SignUpForm) _then) = _$SignUpFormCopyWithImpl;
@useResult
$Res call({
 String username, String email, String password, String? usernameError, String? emailError, String? passwordError, String otp, String? otpError, String displayName, String confirmPassword, String? displayNameError, String? confirmPasswordError
});




}
/// @nodoc
class _$SignUpFormCopyWithImpl<$Res>
    implements $SignUpFormCopyWith<$Res> {
  _$SignUpFormCopyWithImpl(this._self, this._then);

  final SignUpForm _self;
  final $Res Function(SignUpForm) _then;

/// Create a copy of SignUpForm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = null,Object? email = null,Object? password = null,Object? usernameError = freezed,Object? emailError = freezed,Object? passwordError = freezed,Object? otp = null,Object? otpError = freezed,Object? displayName = null,Object? confirmPassword = null,Object? displayNameError = freezed,Object? confirmPasswordError = freezed,}) {
  return _then(_self.copyWith(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,usernameError: freezed == usernameError ? _self.usernameError : usernameError // ignore: cast_nullable_to_non_nullable
as String?,emailError: freezed == emailError ? _self.emailError : emailError // ignore: cast_nullable_to_non_nullable
as String?,passwordError: freezed == passwordError ? _self.passwordError : passwordError // ignore: cast_nullable_to_non_nullable
as String?,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,otpError: freezed == otpError ? _self.otpError : otpError // ignore: cast_nullable_to_non_nullable
as String?,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String,displayNameError: freezed == displayNameError ? _self.displayNameError : displayNameError // ignore: cast_nullable_to_non_nullable
as String?,confirmPasswordError: freezed == confirmPasswordError ? _self.confirmPasswordError : confirmPasswordError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SignUpForm].
extension SignUpFormPatterns on SignUpForm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignUpForm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignUpForm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignUpForm value)  $default,){
final _that = this;
switch (_that) {
case _SignUpForm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignUpForm value)?  $default,){
final _that = this;
switch (_that) {
case _SignUpForm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String username,  String email,  String password,  String? usernameError,  String? emailError,  String? passwordError,  String otp,  String? otpError,  String displayName,  String confirmPassword,  String? displayNameError,  String? confirmPasswordError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignUpForm() when $default != null:
return $default(_that.username,_that.email,_that.password,_that.usernameError,_that.emailError,_that.passwordError,_that.otp,_that.otpError,_that.displayName,_that.confirmPassword,_that.displayNameError,_that.confirmPasswordError);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String username,  String email,  String password,  String? usernameError,  String? emailError,  String? passwordError,  String otp,  String? otpError,  String displayName,  String confirmPassword,  String? displayNameError,  String? confirmPasswordError)  $default,) {final _that = this;
switch (_that) {
case _SignUpForm():
return $default(_that.username,_that.email,_that.password,_that.usernameError,_that.emailError,_that.passwordError,_that.otp,_that.otpError,_that.displayName,_that.confirmPassword,_that.displayNameError,_that.confirmPasswordError);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String username,  String email,  String password,  String? usernameError,  String? emailError,  String? passwordError,  String otp,  String? otpError,  String displayName,  String confirmPassword,  String? displayNameError,  String? confirmPasswordError)?  $default,) {final _that = this;
switch (_that) {
case _SignUpForm() when $default != null:
return $default(_that.username,_that.email,_that.password,_that.usernameError,_that.emailError,_that.passwordError,_that.otp,_that.otpError,_that.displayName,_that.confirmPassword,_that.displayNameError,_that.confirmPasswordError);case _:
  return null;

}
}

}

/// @nodoc


class _SignUpForm implements SignUpForm {
  const _SignUpForm({required this.username, required this.email, required this.password, this.usernameError, this.emailError, this.passwordError, required this.otp, this.otpError, required this.displayName, required this.confirmPassword, this.displayNameError, this.confirmPasswordError});
  

// Step 1 fields
@override final  String username;
@override final  String email;
@override final  String password;
@override final  String? usernameError;
@override final  String? emailError;
@override final  String? passwordError;
// Step 2 (OTP)
@override final  String otp;
@override final  String? otpError;
// Step 3 fields
@override final  String displayName;
@override final  String confirmPassword;
@override final  String? displayNameError;
@override final  String? confirmPasswordError;

/// Create a copy of SignUpForm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpFormCopyWith<_SignUpForm> get copyWith => __$SignUpFormCopyWithImpl<_SignUpForm>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpForm&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.usernameError, usernameError) || other.usernameError == usernameError)&&(identical(other.emailError, emailError) || other.emailError == emailError)&&(identical(other.passwordError, passwordError) || other.passwordError == passwordError)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.otpError, otpError) || other.otpError == otpError)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.displayNameError, displayNameError) || other.displayNameError == displayNameError)&&(identical(other.confirmPasswordError, confirmPasswordError) || other.confirmPasswordError == confirmPasswordError));
}


@override
int get hashCode => Object.hash(runtimeType,username,email,password,usernameError,emailError,passwordError,otp,otpError,displayName,confirmPassword,displayNameError,confirmPasswordError);

@override
String toString() {
  return 'SignUpForm(username: $username, email: $email, password: $password, usernameError: $usernameError, emailError: $emailError, passwordError: $passwordError, otp: $otp, otpError: $otpError, displayName: $displayName, confirmPassword: $confirmPassword, displayNameError: $displayNameError, confirmPasswordError: $confirmPasswordError)';
}


}

/// @nodoc
abstract mixin class _$SignUpFormCopyWith<$Res> implements $SignUpFormCopyWith<$Res> {
  factory _$SignUpFormCopyWith(_SignUpForm value, $Res Function(_SignUpForm) _then) = __$SignUpFormCopyWithImpl;
@override @useResult
$Res call({
 String username, String email, String password, String? usernameError, String? emailError, String? passwordError, String otp, String? otpError, String displayName, String confirmPassword, String? displayNameError, String? confirmPasswordError
});




}
/// @nodoc
class __$SignUpFormCopyWithImpl<$Res>
    implements _$SignUpFormCopyWith<$Res> {
  __$SignUpFormCopyWithImpl(this._self, this._then);

  final _SignUpForm _self;
  final $Res Function(_SignUpForm) _then;

/// Create a copy of SignUpForm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = null,Object? email = null,Object? password = null,Object? usernameError = freezed,Object? emailError = freezed,Object? passwordError = freezed,Object? otp = null,Object? otpError = freezed,Object? displayName = null,Object? confirmPassword = null,Object? displayNameError = freezed,Object? confirmPasswordError = freezed,}) {
  return _then(_SignUpForm(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,usernameError: freezed == usernameError ? _self.usernameError : usernameError // ignore: cast_nullable_to_non_nullable
as String?,emailError: freezed == emailError ? _self.emailError : emailError // ignore: cast_nullable_to_non_nullable
as String?,passwordError: freezed == passwordError ? _self.passwordError : passwordError // ignore: cast_nullable_to_non_nullable
as String?,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,otpError: freezed == otpError ? _self.otpError : otpError // ignore: cast_nullable_to_non_nullable
as String?,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String,displayNameError: freezed == displayNameError ? _self.displayNameError : displayNameError // ignore: cast_nullable_to_non_nullable
as String?,confirmPasswordError: freezed == confirmPasswordError ? _self.confirmPasswordError : confirmPasswordError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$SignUpState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState()';
}


}

/// @nodoc
class $SignUpStateCopyWith<$Res>  {
$SignUpStateCopyWith(SignUpState _, $Res Function(SignUpState) __);
}


/// Adds pattern-matching-related methods to [SignUpState].
extension SignUpStatePatterns on SignUpState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Step1 value)?  step1,TResult Function( _Step2Otp value)?  step2Otp,TResult Function( _Step3Remaining value)?  step3Remaining,TResult Function( _Submitting value)?  submitting,TResult Function( _Success value)?  success,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Step1() when step1 != null:
return step1(_that);case _Step2Otp() when step2Otp != null:
return step2Otp(_that);case _Step3Remaining() when step3Remaining != null:
return step3Remaining(_that);case _Submitting() when submitting != null:
return submitting(_that);case _Success() when success != null:
return success(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Step1 value)  step1,required TResult Function( _Step2Otp value)  step2Otp,required TResult Function( _Step3Remaining value)  step3Remaining,required TResult Function( _Submitting value)  submitting,required TResult Function( _Success value)  success,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Step1():
return step1(_that);case _Step2Otp():
return step2Otp(_that);case _Step3Remaining():
return step3Remaining(_that);case _Submitting():
return submitting(_that);case _Success():
return success(_that);case _Error():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Step1 value)?  step1,TResult? Function( _Step2Otp value)?  step2Otp,TResult? Function( _Step3Remaining value)?  step3Remaining,TResult? Function( _Submitting value)?  submitting,TResult? Function( _Success value)?  success,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Step1() when step1 != null:
return step1(_that);case _Step2Otp() when step2Otp != null:
return step2Otp(_that);case _Step3Remaining() when step3Remaining != null:
return step3Remaining(_that);case _Submitting() when submitting != null:
return submitting(_that);case _Success() when success != null:
return success(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( SignUpForm form)?  step1,TResult Function( SignUpForm form)?  step2Otp,TResult Function( SignUpForm form)?  step3Remaining,TResult Function( SignUpForm form)?  submitting,TResult Function()?  success,TResult Function( SignUpForm form,  String message,  Failure failure)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Step1() when step1 != null:
return step1(_that.form);case _Step2Otp() when step2Otp != null:
return step2Otp(_that.form);case _Step3Remaining() when step3Remaining != null:
return step3Remaining(_that.form);case _Submitting() when submitting != null:
return submitting(_that.form);case _Success() when success != null:
return success();case _Error() when error != null:
return error(_that.form,_that.message,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( SignUpForm form)  step1,required TResult Function( SignUpForm form)  step2Otp,required TResult Function( SignUpForm form)  step3Remaining,required TResult Function( SignUpForm form)  submitting,required TResult Function()  success,required TResult Function( SignUpForm form,  String message,  Failure failure)  error,}) {final _that = this;
switch (_that) {
case _Step1():
return step1(_that.form);case _Step2Otp():
return step2Otp(_that.form);case _Step3Remaining():
return step3Remaining(_that.form);case _Submitting():
return submitting(_that.form);case _Success():
return success();case _Error():
return error(_that.form,_that.message,_that.failure);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( SignUpForm form)?  step1,TResult? Function( SignUpForm form)?  step2Otp,TResult? Function( SignUpForm form)?  step3Remaining,TResult? Function( SignUpForm form)?  submitting,TResult? Function()?  success,TResult? Function( SignUpForm form,  String message,  Failure failure)?  error,}) {final _that = this;
switch (_that) {
case _Step1() when step1 != null:
return step1(_that.form);case _Step2Otp() when step2Otp != null:
return step2Otp(_that.form);case _Step3Remaining() when step3Remaining != null:
return step3Remaining(_that.form);case _Submitting() when submitting != null:
return submitting(_that.form);case _Success() when success != null:
return success();case _Error() when error != null:
return error(_that.form,_that.message,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _Step1 implements SignUpState {
  const _Step1(this.form);
  

 final  SignUpForm form;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Step1CopyWith<_Step1> get copyWith => __$Step1CopyWithImpl<_Step1>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Step1&&(identical(other.form, form) || other.form == form));
}


@override
int get hashCode => Object.hash(runtimeType,form);

@override
String toString() {
  return 'SignUpState.step1(form: $form)';
}


}

/// @nodoc
abstract mixin class _$Step1CopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory _$Step1CopyWith(_Step1 value, $Res Function(_Step1) _then) = __$Step1CopyWithImpl;
@useResult
$Res call({
 SignUpForm form
});


$SignUpFormCopyWith<$Res> get form;

}
/// @nodoc
class __$Step1CopyWithImpl<$Res>
    implements _$Step1CopyWith<$Res> {
  __$Step1CopyWithImpl(this._self, this._then);

  final _Step1 _self;
  final $Res Function(_Step1) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? form = null,}) {
  return _then(_Step1(
null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as SignUpForm,
  ));
}

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SignUpFormCopyWith<$Res> get form {
  
  return $SignUpFormCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}

/// @nodoc


class _Step2Otp implements SignUpState {
  const _Step2Otp(this.form);
  

 final  SignUpForm form;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Step2OtpCopyWith<_Step2Otp> get copyWith => __$Step2OtpCopyWithImpl<_Step2Otp>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Step2Otp&&(identical(other.form, form) || other.form == form));
}


@override
int get hashCode => Object.hash(runtimeType,form);

@override
String toString() {
  return 'SignUpState.step2Otp(form: $form)';
}


}

/// @nodoc
abstract mixin class _$Step2OtpCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory _$Step2OtpCopyWith(_Step2Otp value, $Res Function(_Step2Otp) _then) = __$Step2OtpCopyWithImpl;
@useResult
$Res call({
 SignUpForm form
});


$SignUpFormCopyWith<$Res> get form;

}
/// @nodoc
class __$Step2OtpCopyWithImpl<$Res>
    implements _$Step2OtpCopyWith<$Res> {
  __$Step2OtpCopyWithImpl(this._self, this._then);

  final _Step2Otp _self;
  final $Res Function(_Step2Otp) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? form = null,}) {
  return _then(_Step2Otp(
null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as SignUpForm,
  ));
}

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SignUpFormCopyWith<$Res> get form {
  
  return $SignUpFormCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}

/// @nodoc


class _Step3Remaining implements SignUpState {
  const _Step3Remaining(this.form);
  

 final  SignUpForm form;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Step3RemainingCopyWith<_Step3Remaining> get copyWith => __$Step3RemainingCopyWithImpl<_Step3Remaining>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Step3Remaining&&(identical(other.form, form) || other.form == form));
}


@override
int get hashCode => Object.hash(runtimeType,form);

@override
String toString() {
  return 'SignUpState.step3Remaining(form: $form)';
}


}

/// @nodoc
abstract mixin class _$Step3RemainingCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory _$Step3RemainingCopyWith(_Step3Remaining value, $Res Function(_Step3Remaining) _then) = __$Step3RemainingCopyWithImpl;
@useResult
$Res call({
 SignUpForm form
});


$SignUpFormCopyWith<$Res> get form;

}
/// @nodoc
class __$Step3RemainingCopyWithImpl<$Res>
    implements _$Step3RemainingCopyWith<$Res> {
  __$Step3RemainingCopyWithImpl(this._self, this._then);

  final _Step3Remaining _self;
  final $Res Function(_Step3Remaining) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? form = null,}) {
  return _then(_Step3Remaining(
null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as SignUpForm,
  ));
}

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SignUpFormCopyWith<$Res> get form {
  
  return $SignUpFormCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}

/// @nodoc


class _Submitting implements SignUpState {
  const _Submitting(this.form);
  

 final  SignUpForm form;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmittingCopyWith<_Submitting> get copyWith => __$SubmittingCopyWithImpl<_Submitting>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Submitting&&(identical(other.form, form) || other.form == form));
}


@override
int get hashCode => Object.hash(runtimeType,form);

@override
String toString() {
  return 'SignUpState.submitting(form: $form)';
}


}

/// @nodoc
abstract mixin class _$SubmittingCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory _$SubmittingCopyWith(_Submitting value, $Res Function(_Submitting) _then) = __$SubmittingCopyWithImpl;
@useResult
$Res call({
 SignUpForm form
});


$SignUpFormCopyWith<$Res> get form;

}
/// @nodoc
class __$SubmittingCopyWithImpl<$Res>
    implements _$SubmittingCopyWith<$Res> {
  __$SubmittingCopyWithImpl(this._self, this._then);

  final _Submitting _self;
  final $Res Function(_Submitting) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? form = null,}) {
  return _then(_Submitting(
null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as SignUpForm,
  ));
}

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SignUpFormCopyWith<$Res> get form {
  
  return $SignUpFormCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}

/// @nodoc


class _Success implements SignUpState {
  const _Success();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState.success()';
}


}




/// @nodoc


class _Error implements SignUpState {
  const _Error(this.form, this.message, this.failure);
  

 final  SignUpForm form;
 final  String message;
 final  Failure failure;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.form, form) || other.form == form)&&(identical(other.message, message) || other.message == message)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,form,message,failure);

@override
String toString() {
  return 'SignUpState.error(form: $form, message: $message, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 SignUpForm form, String message, Failure failure
});


$SignUpFormCopyWith<$Res> get form;$FailureCopyWith<$Res> get failure;

}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? form = null,Object? message = null,Object? failure = null,}) {
  return _then(_Error(
null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as SignUpForm,null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SignUpFormCopyWith<$Res> get form {
  
  return $SignUpFormCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FailureCopyWith<$Res> get failure {
  
  return $FailureCopyWith<$Res>(_self.failure, (value) {
    return _then(_self.copyWith(failure: value));
  });
}
}

// dart format on
