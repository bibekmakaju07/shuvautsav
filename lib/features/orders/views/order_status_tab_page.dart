import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shuvautsavapp/features/orders/model/order_status_model.dart';
import 'package:shuvautsavapp/features/orders/views/order_list_page.dart';
import 'package:shuvautsavapp/features/orders/views/returned_order_list_page.dart';

class OrderStatusTabPage extends ConsumerStatefulWidget {
  const OrderStatusTabPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _OrderStatusTabPageState();
}

class _OrderStatusTabPageState extends ConsumerState<OrderStatusTabPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Orders Page',
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              text: 'Order List ',
            ),
            Tab(
              text: 'Returned Order ',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          OrderListPage(),
          ReturnedOrderListPage(),
        ],
      ),
    );
  }
}

const orderStatusJson = [
  {'id': 0, 'status': 'Order Placed', 'color': 'ff2196f3'}, // Colors.blue
  {'id': 1, 'status': 'Order Processed', 'color': 'ffff9800'}, // Colors.orange
  {'id': 2, 'status': 'Order Shipped', 'color': 'ff9c27b0'}, // Colors.purple
  {'id': 3, 'status': 'Order Delivered', 'color': 'ff4caf50'}, // Colors.green
  {'id': 4, 'status': 'Order Cancelled', 'color': 'fff44336'}, // Colors.red
  {'id': 5, 'status': 'Return Requested', 'color': 'ffffeb3b'}, // Colors.yellow
  {'id': 6, 'status': 'Returned', 'color': 'ff9e9e9e'}, // Colors.grey
];

final statusesWithColor = {
  for (var element in orderStatusJson.map(
    (json) => OrderStatusColor.fromJson(json),
  ))
    element.id: element
};
