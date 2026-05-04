import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sep490_mo/features/payment/data/models/payment_models.dart';

part 'payment_state.freezed.dart';

@freezed
sealed class PaymentState with _$PaymentState {
  const factory PaymentState.ready(List<Payment> packages) = _Ready;
  const factory PaymentState.empty() = _Empty;
}
