import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shuvautsavapp/app/view/app.dart';
import 'package:shuvautsavapp/features/payment/model/transaction_data_model.dart';
import 'package:shuvautsavapp/network/network_client.dart';

final futureCIPSProvider = FutureProvider.autoDispose
    .family<TransactionDataModel, int>((ref, amount) async {
  final data = await NetworkService().post(
    RequestApi(
      endPath: 'https://shuvautsav.com/api/v1/customer/connectips/token',
      bodyParams: {
        'total_amount': amount,
      },
    ),
  );

  return TransactionDataModel.fromJson(data.data);
});

class WebViewScreen extends StatefulWidget {
  final int amount;
  final ValueSetter<String> onPaymentComplete;

  const WebViewScreen(
      {super.key, required this.amount, required this.onPaymentComplete});
  @override
  _WebViewScreenState createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  InAppWebViewController? webViewController;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    webViewController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text(
                  'Are you sure to cancel payment',
                  style: context.labelLarge,
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "No",
                      style: context.labelMedium,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context, true);
                    },
                    child: Text(
                      "YES",
                      style: context.labelMedium,
                    ),
                  ),
                ],
              );
            }).then((value) {
          if (value == true) {
            Navigator.pop(context);
          }
        });
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "ConnectIPS Payment",
          ),
        ),
        body: Consumer(builder: (context, ref, _) {
          final state = ref.watch((futureCIPSProvider(widget.amount)));
          return state.maybeWhen(
            orElse: () {
              return SizedBox();
            },
            error: (error, stackTrace) {
              return Text('$error');
            },
            loading: () {
              return Center(child: CircularProgressIndicator());
            },
            data: (data) {
              return InAppWebView(
                initialData: InAppWebViewInitialData(
                  data: _getHtml({
                    ...data.data.toJson(),
                    'tokenId': data.token,
                  }),
                ),
                onWebViewCreated: (controller) {
                  webViewController = controller;
                },
                onLoadStart: (controller, url) {
                  print("Redirect detected: $url");
                  if (url.toString().contains('shuvautsav.com/cips/success')) {
                    print("Redirect detected: $url");
                    Navigator.pop(context);

                    widget.onPaymentComplete(url.toString());

                    // Detect redirect and act accordingly
                    if (url.toString().contains("success")) {
                      print("Transaction Successful!");
                    } else if (url.toString().contains("failure")) {
                      print("Transaction Failed!");
                    }
                  }
                },
              );
            },
          );
        }),
      ),
    );
  }

  String _getHtml(Map<String, dynamic> param) {
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
form.setAttribute("action", "https://login.connectips.com/connectipswebgw/loginpage");
form.setAttribute("target", "");
form.setAttribute("method", "POST");

const merchantIdElement = document.createElement("INPUT");
merchantIdElement.setAttribute("name", "MERCHANTID");
merchantIdElement.setAttribute("value", `${param['MERCHANTID']}`);
merchantIdElement.setAttribute("type", "hidden");
form.appendChild(merchantIdElement);

const appId = document.createElement("INPUT");
appId.setAttribute("name", "APPID");
appId.setAttribute("value", `${param['APPID']}`);
appId.setAttribute("type", "hidden");
form.appendChild(appId);

const appName = document.createElement("INPUT");
appName.setAttribute("name", "APPNAME");
appName.setAttribute("value", `${param['APPNAME']}`);
appName.setAttribute("type", "hidden");
form.appendChild(appName);

const txnId = document.createElement("INPUT");
txnId.setAttribute("name", "TXNID");
txnId.setAttribute("value", `${param['TXNID']}`); // ✅ Fix: Enclosed in template literals
txnId.setAttribute("type", "hidden");
form.appendChild(txnId);

const txnDate = document.createElement("INPUT");
txnDate.setAttribute("name", "TXNDATE");
txnDate.setAttribute("value", `${param['TXNDATE']}`);
txnDate.setAttribute("type", "hidden");
form.appendChild(txnDate);

const txnCurrency = document.createElement("INPUT");
txnCurrency.setAttribute("name", "TXNCRNCY");
txnCurrency.setAttribute("value", `${param['TXNCRNCY']}`);
txnCurrency.setAttribute("type", "hidden");
form.appendChild(txnCurrency);

const txnAmount = document.createElement("INPUT");
txnAmount.setAttribute("name", "TXNAMT");
txnAmount.setAttribute("value", `${param['TXNAMT']}`); // ✅ Fix: Enclosed in template literals
txnAmount.setAttribute("type", "hidden");
form.appendChild(txnAmount);

const referenceId = document.createElement("INPUT");
referenceId.setAttribute("name", "REFERENCEID");
referenceId.setAttribute("value", `${param['REFERENCEID']}`); // ✅ Fix: Enclosed in template literals
referenceId.setAttribute("type", "hidden");
form.appendChild(referenceId);

const remarks = document.createElement("INPUT");
remarks.setAttribute("name", "REMARKS");
remarks.setAttribute("value", `${param['REMARKS']}`);
remarks.setAttribute("type", "hidden");
form.appendChild(remarks);

const particulars = document.createElement("INPUT");
particulars.setAttribute("name", "PARTICULARS");
particulars.setAttribute("value", `${param['PARTICULARS']}`);
particulars.setAttribute("type", "hidden");
form.appendChild(particulars);

const token = document.createElement("INPUT");
token.setAttribute("name", "TOKEN");
token.setAttribute("value", `${param['tokenId']}`); // ✅ Fix: Enclosed in template literals
token.setAttribute("type", "hidden");
form.appendChild(token);

document.body.appendChild(form);
form.submit();

    </script>
</body>

</html>
""";
  }
}
