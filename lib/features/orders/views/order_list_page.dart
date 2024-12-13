import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shuvautsavapp/app/extensions/context_extentions.dart';
import 'package:shuvautsavapp/features/orders/model/orders_model.dart';
import 'package:shuvautsavapp/network/network_client.dart';

final ordersProvider = FutureProvider.autoDispose<OrderResponse>((ref) async {
  final data = await NetworkService().get(
      RequestApi(endPath: 'https://shuvautsav.com/api/v1/customer/orders'));
  return OrderResponse.fromJson(data.data);
});

class OrderListPage extends ConsumerStatefulWidget {
  const OrderListPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OrderListPageState();
}

class _OrderListPageState extends ConsumerState<OrderListPage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(ordersProvider);

    return state.maybeWhen(
      orElse: () {
        return SizedBox();
      },
      loading: () {
        return Center(
          child: CircularProgressIndicator(),
        );
      },
      data: (data) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Order',
                  style: context.textTheme().bodyLarge?.copyWith(),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: data.data.length,
                    itemBuilder: (context, index) {
                      final order = data.data[index];
                      return Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Order ID',
                                      style: context.textTheme().bodyLarge,
                                    ),
                                    Text(
                                      order.orderId,
                                      style: context.textTheme().bodyLarge,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Order Date',
                                      style: context.textTheme().bodyLarge,
                                    ),
                                    Text(
                                      order.orderDate,
                                      style: context.textTheme().bodyLarge,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
