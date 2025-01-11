import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shuvautsavapp/app/extensions/context_extentions.dart';
import 'package:shuvautsavapp/features/cart/controller/shipping_amount_calculator.dart';
import 'package:shuvautsavapp/features/cart/model/cart_list_model.dart';
import 'package:shuvautsavapp/features/cart/model/checkout_success_model.dart';
import 'package:shuvautsavapp/features/cart/views/checkout_form.dart';

class PaymentWidget extends ConsumerStatefulWidget {
  const PaymentWidget(
      {super.key,
      required this.locationModel,
      required this.onValidate,
      required this.cartDetails,
      required this.cartModel,
      required this.formData});

  final LocationModel locationModel;
  final ValueSetter<Map<String, dynamic>> onValidate;
  final Map<String, dynamic> formData;

  final Map<String, dynamic> cartDetails;
  final CartModel cartModel;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PaymentWidgetState();
}

class _PaymentWidgetState extends ConsumerState<PaymentWidget> {
  PaymentMethod _selectedMethod = PaymentMethod.esewaPayment;
  Map<String, dynamic> paymentData = {};
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(shippingAmountProvider, (prev, next) {
      next.maybeWhen(
        orElse: () {},
        success: (data, extra) {
          final totalAmount =
              widget.cartModel.carts.cart.map((e) => e.total_amount).fold(
                    0,
                    (sum, total) => sum + (int.tryParse(total) ?? 0),
                  );
          paymentData.addAll({
            "shipping": [
              {
                "sub_total": "$totalAmount",
                "shipping": data.data.incremental_price,
              }
            ]
          });
        },
        error: (data, extra) {},
      );
    });
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 8, // Softens the shadow
                    spreadRadius: 2, // Extends the shadow
                    offset: Offset(3, 3), // Moves the shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your Order',
                      style: context.textTheme().bodyLarge?.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Text(
                            'Product',
                            style: context
                                .textTheme()
                                .bodySmall
                                ?.copyWith(fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            "Weight",
                            style: context
                                .textTheme()
                                .bodySmall
                                ?.copyWith(fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Amount',
                              style: context
                                  .textTheme()
                                  .bodySmall
                                  ?.copyWith(fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ...widget.cartModel.carts.cart.map((product) {
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Text(
                                  product.productName,
                                  style:
                                      context.textTheme().bodySmall?.copyWith(),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Text(
                                  product.total_weight,
                                  style:
                                      context.textTheme().bodySmall?.copyWith(),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    product.total_amount,
                                    style: context
                                        .textTheme()
                                        .bodySmall
                                        ?.copyWith(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Divider(),
                        ],
                      );
                    }),
                    SizedBox(
                      height: 4,
                    ),
                    ShippingAmountWidget(
                      formData: widget.formData,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Price',
                          style: context.textTheme().bodyMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        Text(
                          'Price',
                          style: context.textTheme().bodyMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        Text(
                          'Price',
                          style: context.textTheme().bodyMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 8, // Softens the shadow
                    spreadRadius: 2, // Extends the shadow
                    offset: Offset(3, 3), // Moves the shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Choose Payment Method',
                      style: context.textTheme().titleMedium,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: PaymentMethod.values.map((method) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 5,
                          ),
                          child: InkWell(
                            onTap: () {
                              _selectedMethod = method;
                              setState(() {});
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: _selectedMethod == method
                                    ? Theme.of(context).primaryColor
                                    : const Color.fromARGB(255, 217, 217, 217),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "${method.displayName} (${method.code})",
                                      style: context
                                          .textTheme()
                                          .bodyMedium
                                          ?.copyWith(
                                            color: _selectedMethod == method
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                    ),
                                    if (_selectedMethod == method)
                                      Icon(
                                        Icons.radio_button_checked,
                                        color: Colors.white,
                                      )
                                    else
                                      Icon(
                                        Icons.radio_button_unchecked,
                                      )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          FocusManager.instance.primaryFocus?.unfocus();

                          paymentData.addAll({
                            'payment_method': _selectedMethod.code,
                          });
                          widget.onValidate(paymentData);
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size.fromHeight(50),
                          backgroundColor: Theme.of(context).primaryColor,
                        ),
                        child: Text(
                          'Continue',
                          style: context.textTheme().bodyLarge?.copyWith(
                                color: Colors.white,
                              ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShippingAmountWidget extends ConsumerStatefulWidget {
  const ShippingAmountWidget({
    super.key,
    required this.formData,
  });

  final Map<String, dynamic> formData;

  @override
  ConsumerState<ShippingAmountWidget> createState() =>
      _ShippingAmountWidgetState();
}

class _ShippingAmountWidgetState extends ConsumerState<ShippingAmountWidget> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((e) {
      ref.read(shippingAmountProvider.notifier).getShippingAmount(
        params: {
          'city_id': widget.formData['city_id'],
          'area_id': widget.formData['area_id'],
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final shippingAmountState = ref.watch(shippingAmountProvider);

        return shippingAmountState.maybeWhen(
          orElse: () {
            return SizedBox();
          },
          loading: (loading, data) {
            return LinearProgressIndicator();
          },
          success: (data, extra) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Shipping Details",
                  style: context
                      .textTheme()
                      .bodySmall
                      ?.copyWith(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        "Incremental Price",
                        style: context.textTheme().bodySmall?.copyWith(),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          data.data.incremental_price,
                          style: context.textTheme().bodySmall?.copyWith(),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        "Initial Price",
                        style: context.textTheme().bodySmall?.copyWith(),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          data.data.initial_price,
                          style: context.textTheme().bodySmall?.copyWith(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        );
      },
    );
  }
}
