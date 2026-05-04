// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Payment _$PaymentFromJson(Map<String, dynamic> json) => _Payment(
  id: (json['id'] as num).toInt(),
  packageName: json['packageName'] as String,
  price: (json['price'] as num).toInt(),
  paidPoints: (json['paidPoints'] as num).toInt(),
  description: json['description'] as String,
);

Map<String, dynamic> _$PaymentToJson(_Payment instance) => <String, dynamic>{
  'id': instance.id,
  'packageName': instance.packageName,
  'price': instance.price,
  'paidPoints': instance.paidPoints,
  'description': instance.description,
};

_CreatePaymentRequest _$CreatePaymentRequestFromJson(
  Map<String, dynamic> json,
) => _CreatePaymentRequest(
  userId: (json['userId'] as num).toInt(),
  paidPackageId: (json['paidPackageId'] as num).toInt(),
  paidPackageName: json['paidPackageName'] as String,
  paidPackageDescription: json['paidPackageDescription'] as String?,
  price: (json['price'] as num).toInt(),
  returnUrl: json['returnUrl'] as String,
  cancelUrl: json['cancelUrl'] as String,
);

Map<String, dynamic> _$CreatePaymentRequestToJson(
  _CreatePaymentRequest instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'paidPackageId': instance.paidPackageId,
  'paidPackageName': instance.paidPackageName,
  'paidPackageDescription': instance.paidPackageDescription,
  'price': instance.price,
  'returnUrl': instance.returnUrl,
  'cancelUrl': instance.cancelUrl,
};

_CancelPaymentResponse _$CancelPaymentResponseFromJson(
  Map<String, dynamic> json,
) => _CancelPaymentResponse(
  success: json['success'] as bool,
  message: json['message'] as String,
);

Map<String, dynamic> _$CancelPaymentResponseToJson(
  _CancelPaymentResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
};
