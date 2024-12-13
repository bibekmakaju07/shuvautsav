import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shuvautsavapp/app/extensions/context_extentions.dart';
import 'package:shuvautsavapp/features/cart/model/checkout_success_model.dart';
import 'package:shuvautsavapp/features/cart/views/checkout_form.dart';

class PaymentWidget extends ConsumerStatefulWidget {
  const PaymentWidget(
      {super.key, required this.locationModel, required this.onValidate});

  final LocationModel locationModel;
  final ValueSetter<Map<String, dynamic>> onValidate;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PaymentWidgetState();
}

class _PaymentWidgetState extends ConsumerState<PaymentWidget> {
  PaymentMethod? _selectedMethod;

  @override
  Widget build(BuildContext context) {
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
                        Text(
                          'Product 1',
                          style: context.textTheme().bodySmall?.copyWith(),
                        ),
                        Text(
                          'Price',
                          style: context.textTheme().bodySmall?.copyWith(),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    ...widget.locationModel.data.carts.map((e) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${e.id}",
                            style: context.textTheme().bodyMedium?.copyWith(),
                          ),
                          Text(
                            "${e.totalAmount}",
                            style: context.textTheme().bodyMedium?.copyWith(),
                          ),
                        ],
                      );
                    }),
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
                                      method.displayName,
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
                          widget.onValidate({});
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
