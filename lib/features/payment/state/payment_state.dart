
import 'package:esewa_flutter_sdk/esewa_payment_success_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_state.freezed.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial() = PaymentInitial;
  const factory PaymentState.success(EsewaPaymentSuccessResult result) = PaymentSuccess;
  const factory PaymentState.failure() = PaymentFailure;
  const factory PaymentState.cancellation() = PaymentCancellation;
}