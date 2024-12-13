import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shuvautsavapp/app/extensions/context_extentions.dart';
import 'package:shuvautsavapp/features/cart/model/checkout_success_model.dart';
import 'package:shuvautsavapp/features/cart/views/widget/billing_details.dart';
import 'package:shuvautsavapp/features/cart/views/widget/payment_widget.dart';
import 'package:shuvautsavapp/features/cart/views/widget/shipping_details.dart';
import 'package:shuvautsavapp/features/payment/controller/esewa_payment_controller.dart';
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
  const TestCheckoutDataFrom({super.key, required this.locationModel});
  final LocationModel locationModel;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TestCheckoutDataFromState();
}

class _TestCheckoutDataFromState extends ConsumerState<TestCheckoutDataFrom> {
  @override
  Widget build(BuildContext context) {
    return CheckoutForm(locationModel: widget.locationModel);
  }
}

class CheckoutForm extends ConsumerStatefulWidget {
  const CheckoutForm({
    super.key,
    required this.locationModel,
  });
  final LocationModel locationModel;

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
        success: (data, extra) {},
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
                  locationModel: widget.locationModel,
                  onValidate: (value) {
                    formData.addAll(value);
                    ref.read(esewaProvider.notifier).payWithEsewa();
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

enum PaymentMethod {
  cashOnDelivery("Cash on Delivery"),
  esewaPayment("Esewa Payment"),
  ipsPayment("IPS Payment"),
  prabhupayPayment("Prabhupay Payment"),
  bankTransfer("Bank Transfer");

  final String displayName;
  const PaymentMethod(this.displayName);
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
    this.validator,
  });
  final String label;
  final TextEditingController? textEditingController;
  final VoidCallback? onTap;
  final bool? readOnly;
  final Widget? suffix;
  final Widget? suffixIcon;
  final int? maxLines;
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
