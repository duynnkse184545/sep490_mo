// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Payment {

 int get id; String get packageName; int get price; int get paidPoints; String get description;
/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentCopyWith<Payment> get copyWith => _$PaymentCopyWithImpl<Payment>(this as Payment, _$identity);

  /// Serializes this Payment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Payment&&(identical(other.id, id) || other.id == id)&&(identical(other.packageName, packageName) || other.packageName == packageName)&&(identical(other.price, price) || other.price == price)&&(identical(other.paidPoints, paidPoints) || other.paidPoints == paidPoints)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,packageName,price,paidPoints,description);

@override
String toString() {
  return 'Payment(id: $id, packageName: $packageName, price: $price, paidPoints: $paidPoints, description: $description)';
}


}

/// @nodoc
abstract mixin class $PaymentCopyWith<$Res>  {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) _then) = _$PaymentCopyWithImpl;
@useResult
$Res call({
 int id, String packageName, int price, int paidPoints, String description
});




}
/// @nodoc
class _$PaymentCopyWithImpl<$Res>
    implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._self, this._then);

  final Payment _self;
  final $Res Function(Payment) _then;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? packageName = null,Object? price = null,Object? paidPoints = null,Object? description = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,packageName: null == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,paidPoints: null == paidPoints ? _self.paidPoints : paidPoints // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Payment].
extension PaymentPatterns on Payment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Payment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Payment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Payment value)  $default,){
final _that = this;
switch (_that) {
case _Payment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Payment value)?  $default,){
final _that = this;
switch (_that) {
case _Payment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String packageName,  int price,  int paidPoints,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Payment() when $default != null:
return $default(_that.id,_that.packageName,_that.price,_that.paidPoints,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String packageName,  int price,  int paidPoints,  String description)  $default,) {final _that = this;
switch (_that) {
case _Payment():
return $default(_that.id,_that.packageName,_that.price,_that.paidPoints,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String packageName,  int price,  int paidPoints,  String description)?  $default,) {final _that = this;
switch (_that) {
case _Payment() when $default != null:
return $default(_that.id,_that.packageName,_that.price,_that.paidPoints,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Payment implements Payment {
  const _Payment({required this.id, required this.packageName, required this.price, required this.paidPoints, required this.description});
  factory _Payment.fromJson(Map<String, dynamic> json) => _$PaymentFromJson(json);

@override final  int id;
@override final  String packageName;
@override final  int price;
@override final  int paidPoints;
@override final  String description;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentCopyWith<_Payment> get copyWith => __$PaymentCopyWithImpl<_Payment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Payment&&(identical(other.id, id) || other.id == id)&&(identical(other.packageName, packageName) || other.packageName == packageName)&&(identical(other.price, price) || other.price == price)&&(identical(other.paidPoints, paidPoints) || other.paidPoints == paidPoints)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,packageName,price,paidPoints,description);

@override
String toString() {
  return 'Payment(id: $id, packageName: $packageName, price: $price, paidPoints: $paidPoints, description: $description)';
}


}

/// @nodoc
abstract mixin class _$PaymentCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$PaymentCopyWith(_Payment value, $Res Function(_Payment) _then) = __$PaymentCopyWithImpl;
@override @useResult
$Res call({
 int id, String packageName, int price, int paidPoints, String description
});




}
/// @nodoc
class __$PaymentCopyWithImpl<$Res>
    implements _$PaymentCopyWith<$Res> {
  __$PaymentCopyWithImpl(this._self, this._then);

  final _Payment _self;
  final $Res Function(_Payment) _then;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? packageName = null,Object? price = null,Object? paidPoints = null,Object? description = null,}) {
  return _then(_Payment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,packageName: null == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,paidPoints: null == paidPoints ? _self.paidPoints : paidPoints // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$CreatePaymentRequest {

 int get userId; int get paidPackageId; String get paidPackageName; String? get paidPackageDescription; int get price; String get returnUrl; String get cancelUrl;
/// Create a copy of CreatePaymentRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePaymentRequestCopyWith<CreatePaymentRequest> get copyWith => _$CreatePaymentRequestCopyWithImpl<CreatePaymentRequest>(this as CreatePaymentRequest, _$identity);

  /// Serializes this CreatePaymentRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePaymentRequest&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.paidPackageId, paidPackageId) || other.paidPackageId == paidPackageId)&&(identical(other.paidPackageName, paidPackageName) || other.paidPackageName == paidPackageName)&&(identical(other.paidPackageDescription, paidPackageDescription) || other.paidPackageDescription == paidPackageDescription)&&(identical(other.price, price) || other.price == price)&&(identical(other.returnUrl, returnUrl) || other.returnUrl == returnUrl)&&(identical(other.cancelUrl, cancelUrl) || other.cancelUrl == cancelUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,paidPackageId,paidPackageName,paidPackageDescription,price,returnUrl,cancelUrl);

@override
String toString() {
  return 'CreatePaymentRequest(userId: $userId, paidPackageId: $paidPackageId, paidPackageName: $paidPackageName, paidPackageDescription: $paidPackageDescription, price: $price, returnUrl: $returnUrl, cancelUrl: $cancelUrl)';
}


}

/// @nodoc
abstract mixin class $CreatePaymentRequestCopyWith<$Res>  {
  factory $CreatePaymentRequestCopyWith(CreatePaymentRequest value, $Res Function(CreatePaymentRequest) _then) = _$CreatePaymentRequestCopyWithImpl;
@useResult
$Res call({
 int userId, int paidPackageId, String paidPackageName, String? paidPackageDescription, int price, String returnUrl, String cancelUrl
});




}
/// @nodoc
class _$CreatePaymentRequestCopyWithImpl<$Res>
    implements $CreatePaymentRequestCopyWith<$Res> {
  _$CreatePaymentRequestCopyWithImpl(this._self, this._then);

  final CreatePaymentRequest _self;
  final $Res Function(CreatePaymentRequest) _then;

/// Create a copy of CreatePaymentRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? paidPackageId = null,Object? paidPackageName = null,Object? paidPackageDescription = freezed,Object? price = null,Object? returnUrl = null,Object? cancelUrl = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,paidPackageId: null == paidPackageId ? _self.paidPackageId : paidPackageId // ignore: cast_nullable_to_non_nullable
as int,paidPackageName: null == paidPackageName ? _self.paidPackageName : paidPackageName // ignore: cast_nullable_to_non_nullable
as String,paidPackageDescription: freezed == paidPackageDescription ? _self.paidPackageDescription : paidPackageDescription // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,returnUrl: null == returnUrl ? _self.returnUrl : returnUrl // ignore: cast_nullable_to_non_nullable
as String,cancelUrl: null == cancelUrl ? _self.cancelUrl : cancelUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatePaymentRequest].
extension CreatePaymentRequestPatterns on CreatePaymentRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatePaymentRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatePaymentRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatePaymentRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreatePaymentRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatePaymentRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreatePaymentRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int userId,  int paidPackageId,  String paidPackageName,  String? paidPackageDescription,  int price,  String returnUrl,  String cancelUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatePaymentRequest() when $default != null:
return $default(_that.userId,_that.paidPackageId,_that.paidPackageName,_that.paidPackageDescription,_that.price,_that.returnUrl,_that.cancelUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int userId,  int paidPackageId,  String paidPackageName,  String? paidPackageDescription,  int price,  String returnUrl,  String cancelUrl)  $default,) {final _that = this;
switch (_that) {
case _CreatePaymentRequest():
return $default(_that.userId,_that.paidPackageId,_that.paidPackageName,_that.paidPackageDescription,_that.price,_that.returnUrl,_that.cancelUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int userId,  int paidPackageId,  String paidPackageName,  String? paidPackageDescription,  int price,  String returnUrl,  String cancelUrl)?  $default,) {final _that = this;
switch (_that) {
case _CreatePaymentRequest() when $default != null:
return $default(_that.userId,_that.paidPackageId,_that.paidPackageName,_that.paidPackageDescription,_that.price,_that.returnUrl,_that.cancelUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatePaymentRequest implements CreatePaymentRequest {
  const _CreatePaymentRequest({required this.userId, required this.paidPackageId, required this.paidPackageName, this.paidPackageDescription, required this.price, required this.returnUrl, required this.cancelUrl});
  factory _CreatePaymentRequest.fromJson(Map<String, dynamic> json) => _$CreatePaymentRequestFromJson(json);

@override final  int userId;
@override final  int paidPackageId;
@override final  String paidPackageName;
@override final  String? paidPackageDescription;
@override final  int price;
@override final  String returnUrl;
@override final  String cancelUrl;

/// Create a copy of CreatePaymentRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePaymentRequestCopyWith<_CreatePaymentRequest> get copyWith => __$CreatePaymentRequestCopyWithImpl<_CreatePaymentRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatePaymentRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePaymentRequest&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.paidPackageId, paidPackageId) || other.paidPackageId == paidPackageId)&&(identical(other.paidPackageName, paidPackageName) || other.paidPackageName == paidPackageName)&&(identical(other.paidPackageDescription, paidPackageDescription) || other.paidPackageDescription == paidPackageDescription)&&(identical(other.price, price) || other.price == price)&&(identical(other.returnUrl, returnUrl) || other.returnUrl == returnUrl)&&(identical(other.cancelUrl, cancelUrl) || other.cancelUrl == cancelUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,paidPackageId,paidPackageName,paidPackageDescription,price,returnUrl,cancelUrl);

@override
String toString() {
  return 'CreatePaymentRequest(userId: $userId, paidPackageId: $paidPackageId, paidPackageName: $paidPackageName, paidPackageDescription: $paidPackageDescription, price: $price, returnUrl: $returnUrl, cancelUrl: $cancelUrl)';
}


}

/// @nodoc
abstract mixin class _$CreatePaymentRequestCopyWith<$Res> implements $CreatePaymentRequestCopyWith<$Res> {
  factory _$CreatePaymentRequestCopyWith(_CreatePaymentRequest value, $Res Function(_CreatePaymentRequest) _then) = __$CreatePaymentRequestCopyWithImpl;
@override @useResult
$Res call({
 int userId, int paidPackageId, String paidPackageName, String? paidPackageDescription, int price, String returnUrl, String cancelUrl
});




}
/// @nodoc
class __$CreatePaymentRequestCopyWithImpl<$Res>
    implements _$CreatePaymentRequestCopyWith<$Res> {
  __$CreatePaymentRequestCopyWithImpl(this._self, this._then);

  final _CreatePaymentRequest _self;
  final $Res Function(_CreatePaymentRequest) _then;

/// Create a copy of CreatePaymentRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? paidPackageId = null,Object? paidPackageName = null,Object? paidPackageDescription = freezed,Object? price = null,Object? returnUrl = null,Object? cancelUrl = null,}) {
  return _then(_CreatePaymentRequest(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,paidPackageId: null == paidPackageId ? _self.paidPackageId : paidPackageId // ignore: cast_nullable_to_non_nullable
as int,paidPackageName: null == paidPackageName ? _self.paidPackageName : paidPackageName // ignore: cast_nullable_to_non_nullable
as String,paidPackageDescription: freezed == paidPackageDescription ? _self.paidPackageDescription : paidPackageDescription // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,returnUrl: null == returnUrl ? _self.returnUrl : returnUrl // ignore: cast_nullable_to_non_nullable
as String,cancelUrl: null == cancelUrl ? _self.cancelUrl : cancelUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$CancelPaymentResponse {

 bool get success; String get message;
/// Create a copy of CancelPaymentResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CancelPaymentResponseCopyWith<CancelPaymentResponse> get copyWith => _$CancelPaymentResponseCopyWithImpl<CancelPaymentResponse>(this as CancelPaymentResponse, _$identity);

  /// Serializes this CancelPaymentResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CancelPaymentResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message);

@override
String toString() {
  return 'CancelPaymentResponse(success: $success, message: $message)';
}


}

/// @nodoc
abstract mixin class $CancelPaymentResponseCopyWith<$Res>  {
  factory $CancelPaymentResponseCopyWith(CancelPaymentResponse value, $Res Function(CancelPaymentResponse) _then) = _$CancelPaymentResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String message
});




}
/// @nodoc
class _$CancelPaymentResponseCopyWithImpl<$Res>
    implements $CancelPaymentResponseCopyWith<$Res> {
  _$CancelPaymentResponseCopyWithImpl(this._self, this._then);

  final CancelPaymentResponse _self;
  final $Res Function(CancelPaymentResponse) _then;

/// Create a copy of CancelPaymentResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CancelPaymentResponse].
extension CancelPaymentResponsePatterns on CancelPaymentResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CancelPaymentResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CancelPaymentResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CancelPaymentResponse value)  $default,){
final _that = this;
switch (_that) {
case _CancelPaymentResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CancelPaymentResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CancelPaymentResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CancelPaymentResponse() when $default != null:
return $default(_that.success,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String message)  $default,) {final _that = this;
switch (_that) {
case _CancelPaymentResponse():
return $default(_that.success,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String message)?  $default,) {final _that = this;
switch (_that) {
case _CancelPaymentResponse() when $default != null:
return $default(_that.success,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CancelPaymentResponse implements CancelPaymentResponse {
  const _CancelPaymentResponse({required this.success, required this.message});
  factory _CancelPaymentResponse.fromJson(Map<String, dynamic> json) => _$CancelPaymentResponseFromJson(json);

@override final  bool success;
@override final  String message;

/// Create a copy of CancelPaymentResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CancelPaymentResponseCopyWith<_CancelPaymentResponse> get copyWith => __$CancelPaymentResponseCopyWithImpl<_CancelPaymentResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CancelPaymentResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CancelPaymentResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message);

@override
String toString() {
  return 'CancelPaymentResponse(success: $success, message: $message)';
}


}

/// @nodoc
abstract mixin class _$CancelPaymentResponseCopyWith<$Res> implements $CancelPaymentResponseCopyWith<$Res> {
  factory _$CancelPaymentResponseCopyWith(_CancelPaymentResponse value, $Res Function(_CancelPaymentResponse) _then) = __$CancelPaymentResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String message
});




}
/// @nodoc
class __$CancelPaymentResponseCopyWithImpl<$Res>
    implements _$CancelPaymentResponseCopyWith<$Res> {
  __$CancelPaymentResponseCopyWithImpl(this._self, this._then);

  final _CancelPaymentResponse _self;
  final $Res Function(_CancelPaymentResponse) _then;

/// Create a copy of CancelPaymentResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,}) {
  return _then(_CancelPaymentResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
