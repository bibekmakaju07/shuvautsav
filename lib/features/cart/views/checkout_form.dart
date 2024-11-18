import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shuvautsavapp/features/cart/model/checkout_success_model.dart';

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

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fill your Details',
        ),
      ),
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: [
              Tab(
                text: 'Shipping',
              ),
              Tab(
                text: 'Billing',
              ),
              Tab(
                text: 'Payment}',
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: TabBarView(
                controller: _tabController,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Select a country',
                    ),
                  ),
                  TextFormField(),
                  TextFormField(),
                  TextFormField(),
                  TextFormField(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GenericBottomSheet<T> extends ConsumerStatefulWidget {
  const GenericBottomSheet(
      {super.key, required this.items, required this.title});
  final List<DropdownMenuItem<T>> items;
  final String title;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GenericBottomSheetState<T>();
}

class _GenericBottomSheetState<T> extends ConsumerState<GenericBottomSheet<T>> {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.8,
      child: ListView(
        children: widget.items.map((e) {
          return e.child;
        }).toList(),
      ),
    );
  }
}
