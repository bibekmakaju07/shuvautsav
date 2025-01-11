import 'package:esewa_flutter_sdk/esewa_config.dart';
import 'package:esewa_flutter_sdk/esewa_flutter_sdk.dart';
import 'package:esewa_flutter_sdk/esewa_payment.dart';
import 'package:esewa_flutter_sdk/esewa_payment_success_result.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shuvautsavapp/features/payment/state/payment_state.dart';

final esewaProvider =
    StateNotifierProvider.autoDispose<EsewaController, PaymentState>((ref) {
  return EsewaController();
});

class EsewaController extends StateNotifier<PaymentState> {
  EsewaController() : super(PaymentState.initial());

  static const CLIENT_ID =
      "NjswISBTPjEqJCVFOC8/Iis8RSc3NiU2SzUvMVMpIyVJJTVUICBIJCkmPSQs";
  static const SECRET_KEY = "FhcOWRIbHhMY";

  Future<void> payWithEsewa(EsewaPayment esewaPayment
      // EsewaPayment paymentDetails
      ) async {
    try {
      EsewaFlutterSdk.initPayment(
        esewaConfig: EsewaConfig(
          environment: Environment.live,
          clientId: CLIENT_ID,
          secretId: SECRET_KEY,
        ),
        esewaPayment: esewaPayment,
        onPaymentSuccess: (EsewaPaymentSuccessResult data) {
          debugPrint(":::SUCCESS::: => $data");
          state = PaymentState.success(data);
          // verifyTransactionStatus(data);
        },
        onPaymentFailure: (data) {
          debugPrint(":::FAILURE::: => $data");
          state = PaymentState.failure(data);
        },
        onPaymentCancellation: (data) {
          debugPrint(":::CANCELLATION::: => $data");
          state = PaymentState.cancellation(data);
        },
      );
    } on Exception catch (e) {
      state = PaymentState.cancellation(e.toString());
      debugPrint("EXCEPTION : ${e.toString()}");
    }
  }

  // void verifyTransactionStatus(EsewaPaymentSuccessResult result) async {
  //   var response = await callVerificationApi(result);
  //   if (response.statusCode == 200) {
  //     var map = {'data': response.data};
  //     final sucResponse = EsewaPaymentSuccessResponse.fromJson(map);
  //     debugPrint("Response Code => ${sucResponse.data}");
  //     if (sucResponse.data[0].transactionDetails.status == 'COMPLETE') {
  //      //TODO Handle Txn Verification Success
  //       return;
  //     }
  //     //TODO Handle Txn Verification Failure
  //   } else {
  //     //TODO Handle Txn Verification Failure
  //   }
  // }
}
