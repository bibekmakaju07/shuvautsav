import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shuvautsavapp/app/app_states/appstate.dart';

class ConnectIpsPaymentCubit extends StateNotifier<AppState> {
  ConnectIpsPaymentCubit() : super(AppState.initial());
  final dio = Dio();

  Future<Map<String, dynamic>> _getParams(int purchaseId) async {
    final res = await dio.post('/getParams', data: {
      "purchaseId": purchaseId,
    });
    return res.data;
  }

  Future<String> _getHtmlString(int purchaseId) async {
    final param = await _getParams(purchaseId);
    return """
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <script>
        const form = document.createElement("FORM");
        form.setAttribute("action", "https://uat.connectips.com/connectipswebgw/loginpage");
        form.setAttribute("target", "");
        form.setAttribute("method", "POST");

        const merchantIdElement = document.createElement("INPUT");
        merchantIdElement.setAttribute("name", "MERCHANTID");
        merchantIdElement.setAttribute("value", "${param['MERCHANTID']}");
        merchantIdElement.setAttribute("type", "hidden");
        form.appendChild(merchantIdElement);

        const appId = document.createElement("INPUT");
        appId.setAttribute("name", "APPID");
        appId.setAttribute("value", "${param['APPID']}");
        appId.setAttribute("type", "hidden");
        form.appendChild(appId);

        const appName = document.createElement("INPUT");
        appName.setAttribute("name", "APPNAME");
        appName.setAttribute("value", "${param['APPNAME']}");
        appName.setAttribute("type", "hidden");
        form.appendChild(appName);

        const txnId = document.createElement("INPUT");
        txnId.setAttribute("name", "TXNID");
        txnId.setAttribute("value", "${param['TXNID']}");
        txnId.setAttribute("type", "hidden");
        form.appendChild(txnId);

        const txnDate = document.createElement("INPUT");
        txnDate.setAttribute("name", "TXNDATE");
        txnDate.setAttribute("value", "${param['TXNDATE']}");
        txnDate.setAttribute("type", "hidden");
        form.appendChild(txnDate);

        const txnCurrency = document.createElement("INPUT");
        txnCurrency.setAttribute("name", "TXNCRNCY");
        txnCurrency.setAttribute("value", "${param['TXNCRNCY']}");
        txnCurrency.setAttribute("type", "hidden");
        form.appendChild(txnCurrency);

        const txnAmount = document.createElement("INPUT");
        txnAmount.setAttribute("name", "TXNAMT");
        txnAmount.setAttribute("value", "${param['TXNAMT']}");
        txnAmount.setAttribute("type", "hidden");
        form.appendChild(txnAmount);

        const referenceId = document.createElement("INPUT");
        referenceId.setAttribute("name", "REFERENCEID");
        referenceId.setAttribute("value", "${param['REFERENCEID']}");
        referenceId.setAttribute("type", "hidden");
        form.appendChild(referenceId);

        const remarks = document.createElement("INPUT");
        remarks.setAttribute("name", "REMARKS");
        remarks.setAttribute("value", "${param['REMARKS']}");
        remarks.setAttribute("type", "hidden");
        form.appendChild(remarks);

        const particulars = document.createElement("INPUT");
        particulars.setAttribute("name", "PARTICULARS");
        particulars.setAttribute("value", "${param['PARTICULARS']}");
        particulars.setAttribute("type", "hidden");
        form.appendChild(particulars);

        const token = document.createElement("INPUT");
        token.setAttribute("name", "TOKEN");
        token.setAttribute("value", "${param['TOKEN']}");
        token.setAttribute("type", "hidden");
        form.appendChild(token);

        // console.log(form);

        document.body.appendChild(form);
        form.submit();
    </script>
</body>

</html>
""";
  }

  Future<void> initiate(int purchaseId) async {
    try {
      final data = await _getHtmlString(purchaseId);
    } catch (e) {}
  }
}
