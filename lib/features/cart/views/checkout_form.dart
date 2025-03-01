import 'package:esewa_flutter_sdk/esewa_payment.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shuvautsavapp/app/app_route/app_delegate.dart';
import 'package:shuvautsavapp/app/extensions/context_extentions.dart';
import 'package:shuvautsavapp/app/loading/loading_indicator.dart';
import 'package:shuvautsavapp/app/storage/product_model.dart';
import 'package:shuvautsavapp/app/view/app.dart';
import 'package:shuvautsavapp/features/cart/controller/cart_checkout_store_controller.dart';
import 'package:shuvautsavapp/features/cart/model/cart_list_model.dart';
import 'package:shuvautsavapp/features/cart/model/checkout_success_model.dart';
import 'package:shuvautsavapp/features/cart/views/checkout_success.dart';
import 'package:shuvautsavapp/features/cart/views/widget/billing_details.dart';
import 'package:shuvautsavapp/features/cart/views/widget/payment_widget.dart';
import 'package:shuvautsavapp/features/cart/views/widget/shipping_details.dart';
import 'package:shuvautsavapp/features/payment/controller/esewa_payment_controller.dart';
import 'package:shuvautsavapp/features/payment/views/connect_ips_payment.dart';
import 'package:shuvautsavapp/main.dart';
import 'package:shuvautsavapp/network/network_client.dart';

final locationProvider = FutureProvider.autoDispose<LocationModel>((ref) async {
  final data = await NetworkService().get(
    RequestApi(
      endPath: 'https://bibekmakaju07.github.io/check.json',
    ),
  );
  return LocationModel.fromJson(data.data);
});

class TestCheckoutDataFrom extends ConsumerStatefulWidget {
  const TestCheckoutDataFrom({
    super.key,
    required this.locationModel,
    required this.cartDetails,
    required this.cartModel,
  });
  final LocationModel locationModel;
  final Map<String, dynamic> cartDetails;
  final CartModel cartModel;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TestCheckoutDataFromState();
}

class _TestCheckoutDataFromState extends ConsumerState<TestCheckoutDataFrom> {
  @override
  Widget build(BuildContext context) {
    return CheckoutForm(
      locationModel: widget.locationModel,
      cartDetails: widget.cartDetails,
      cartModel: widget.cartModel,
    );
  }
}

class CheckoutForm extends ConsumerStatefulWidget {
  const CheckoutForm({
    super.key,
    required this.locationModel,
    required this.cartDetails,
    required this.cartModel,
  });
  final LocationModel locationModel;
  final Map<String, dynamic> cartDetails;
  final CartModel cartModel;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CheckoutFormState();
}

class _CheckoutFormState extends ConsumerState<CheckoutForm>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  Map<String, dynamic> formData = {};

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(esewaProvider, (prev, next) {
      next.maybeWhen(
        orElse: () {},
        success: (data) {
          formData['refid'] = data.refId;
          formData['amt'] = data.totalAmount;
          formData['oid'] = data.productId;

          ref
              .read(checkoutStoreProvider.notifier)
              .storeOnCheckout(params: formData);
        },
        cancellation: (failure) {
          ref.read(toastProvider.notifier).update((_) {
            return (
              title: 'Payment Cancelled by User',
              description: '',
              id: '1231sa',
              error: true,
            );
          });
        },
        failure: (failure) {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Payment Failed'),
                content: Text('$failure'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Close',
                    ),
                  ),
                ],
              );
            },
          );
        },
      );
    });

    ref.listen(checkoutStoreProvider, (prev, next) {
      next.maybeWhen(
        orElse: () {},
        loading: (loading, data) {
          if (loading) {
            LoadingIndicator.instance.show(context);
          } else {
            LoadingIndicator.instance.hide();
          }
        },
        success: (data, extra) {
          ref
              .read(objectBoxProvider.notifier)
              .state
              .box<ProductDetailsEntity>()
              .removeMany(widget.cartModel.carts.cart
                  .map((e) => int.tryParse(e.id) ?? 0)
                  .toList());

          ref.push(RoutePage(
              child: CheckoutSuccessPage(), name: 'CheckoutSuccessPage'));
        },
        error: (data, extra) {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Something went wrong'),
                content: Text(data.message),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Close',
                    ),
                  ),
                ],
              );
            },
          );
        },
      );
    });
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fill your Details',
        ),
      ),
      body: Column(
        children: [
          IgnorePointer(
            ignoring: true,
            child: TabBar(
              physics: NeverScrollableScrollPhysics(),
              controller: _tabController,
              tabs: [
                Tab(
                  text: 'Shipping Details',
                ),
                Tab(
                  text: 'Billing Details',
                ),
                Tab(
                  text: 'Payment',
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: [
                ShippingDetails(
                  locationModel: widget.locationModel,
                  onValidate: (value) {
                    formData.addAll(value);
                    _tabController.animateTo(_tabController.index + 1);
                  },
                ),
                BillingDetails(
                  locationModel: widget.locationModel,
                  onValidate: (value) {
                    formData.addAll(value);
                    _tabController.animateTo(_tabController.index + 1);
                  },
                ),
                PaymentWidget(
                  cartModel: widget.cartModel,
                  locationModel: widget.locationModel,
                  cartDetails: widget.cartDetails,
                  formData: formData,
                  onValidate: (value) {
                    formData.addAll(value);
                    formData.addAll(widget.cartModel.carts.toJson());

                    final data = widget.cartModel.carts.cart
                        .expand((e) => [e.productName])
                        .join(",");
                    final totalAmount = widget.cartModel.carts.cart
                        .map((e) => e.total_amount)
                        .fold(
                      0.0,
                      (sum, total) {
                        print(double.tryParse(total));
                        return sum + (double.tryParse(total) ?? 0);
                      },
                    );

                    formData['grand_total'] = "$totalAmount";

                    if (formData['payment_method'] == 'esewa') {
                      ref
                          .read(esewaProvider.notifier)
                          .payWithEsewa(EsewaPayment(
                            productId: widget.cartModel.cartId,
                            productName: data,
                            productPrice: "$totalAmount",
                            callbackUrl: '',
                          ));
                    } else if (formData['payment_method'] == 'connectips') {
                      ref.push(
                        RoutePage(
                          child: WebViewScreen(
                            amount: totalAmount.toInt(),
                            onPaymentComplete: (value) {
                              ref
                                  .read(checkoutStoreProvider.notifier)
                                  .storeOnCheckout(
                                params: {
                                  ...formData,
                                  'total_amount': totalAmount,
                                  "TXNID": value.$2,
                                },
                              );
                            },
                          ),
                          name: 'WebViewScreen',
                        ),
                      );
                    } else if (formData['payment_method'] == 'cod') {
                      ref.read(toastProvider.notifier).update((_) {
                        return (
                          title: 'Cash on delivery',
                          description: '',
                          id: '1231sa',
                          error: false,
                        );
                      });
                      ref
                          .read(checkoutStoreProvider.notifier)
                          .storeOnCheckout(params: formData);
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//cod,prabhupay,ips,fonepay,esewa
enum PaymentMethod {
  cashOnDelivery("Cash on Delivery", "cod"),
  esewaPayment("Esewa Payment", 'esewa'),
  ipsPayment("IPS Payment", 'connectips'),
  // prabhupayPayment("Prabhupay Payment"),
  // bankTransfer("Bank Transfer")
  ;

  final String displayName;
  final String code;
  const PaymentMethod(this.displayName, this.code);
}

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.label,
    this.onTap,
    this.readOnly,
    this.suffix,
    this.suffixIcon,
    this.textEditingController,
    this.maxLines,
    this.hintStyle,
    this.onSaved,
    this.validator,
  });
  final String label;
  final TextEditingController? textEditingController;
  final VoidCallback? onTap;
  final bool? readOnly;
  final Widget? suffix;
  final Widget? suffixIcon;
  final int? maxLines;
  final FormFieldSetter<String>? onSaved;
  final TextStyle? hintStyle;
  final String? Function(String?)? validator;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(widget.label),
        SizedBox(
          height: 4,
        ),
        TextFormField(
          controller: widget.textEditingController,
          onTap: widget.onTap,
          maxLines: widget.maxLines,
          readOnly: widget.readOnly ?? false,
          validator: widget.validator,
          onSaved: widget.onSaved,
          decoration: InputDecoration(
            suffixIcon: widget.suffixIcon,
            isDense: true,
            hintText: widget.label,
            hintStyle: widget.hintStyle ?? context.textTheme().bodyMedium,
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
