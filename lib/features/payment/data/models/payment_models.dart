import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_models.freezed.dart';

part 'payment_models.g.dart';

@freezed
abstract class Payment with _$Payment {
  const factory Payment({
    required int id,
    required String packageName,
    required int price,
    required int paidPoints,
    required String description,
  }) = _Payment;

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);
}

@freezed
abstract class CreatePaymentRequest with _$CreatePaymentRequest {
  const factory CreatePaymentRequest({
    required int userId,
    required int paidPackageId,
    required String paidPackageName,
    String? paidPackageDescription,
    required int price,
    required String returnUrl,
    required String cancelUrl,
  }) = _CreatePaymentRequest;

  factory CreatePaymentRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePaymentRequestFromJson(json);
}

@freezed
abstract class CancelPaymentResponse with _$CancelPaymentResponse {
  const factory CancelPaymentResponse({
    required bool success,
    required String message,
  }) = _CancelPaymentResponse;

  factory CancelPaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$CancelPaymentResponseFromJson(json);
}