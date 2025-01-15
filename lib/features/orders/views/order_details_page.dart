import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shuvautsavapp/app/view/app.dart';
import 'package:shuvautsavapp/features/orders/model/order_response_details_model.dart';
import 'package:shuvautsavapp/network/network_client.dart';

final ordersDetailsProvider = FutureProvider.autoDispose
    .family<OrderDetailsResponseModel, String>((ref, id) async {
  final data = await NetworkService().get(RequestApi(
      endPath:
          'https://shuvautsav.com/api/v1/customer/order/detail?order_id=$id'));
  return OrderDetailsResponseModel.fromJson(data.data);
});

class OrderDetailsPage extends ConsumerStatefulWidget {
  const OrderDetailsPage({
    super.key,
    required this.id,
    required this.orderId,
  });
  final String id;
  final String orderId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OrderListPageState();
}

class _OrderListPageState extends ConsumerState<OrderDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(ordersDetailsProvider(widget.id));

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Order Details',
        ),
      ),
      body: state.maybeWhen(
        orElse: () {
          return SizedBox();
        },
        loading: () {
          return Center(
            child: CircularProgressIndicator(),
          );
        },
        data: (data) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Order Summary
                Text(
                  "Order Summary",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(child: Text("Order ID: ")),
                                  Text(widget.orderId,
                                      style: context.bodyMedium.copyWith(
                                        fontWeight: FontWeight.w700,
                                      )),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(child: Text("Shipping Total: ")),
                                  Text("${data.data.order?.shippingTotal}",
                                      style: context.bodyMedium.copyWith(
                                        fontWeight: FontWeight.w700,
                                      )),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(child: Text("Grand Total: ")),
                                  Text('${data.data.order?.grandTotal}',
                                      style: context.bodyMedium.copyWith(
                                        fontWeight: FontWeight.w700,
                                      ))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Order Items
                Text(
                  "Order Items",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: ListView.builder(
                    itemCount: data.data.orderLists.length,
                    itemBuilder: (context, index) {
                      final item = data.data.orderLists[index];
                      return Card(
                        margin: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.title,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Quantity: "),
                                  Text(
                                    "${item.quantity}",
                                    style: context.bodyMedium.copyWith(
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Rate: "),
                                  Text(
                                    "NPR. ${item.rate.toDouble()}",
                                    style: context.bodyMedium.copyWith(
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Total: "),
                                  Text(
                                    "NPR. ${item.total}",
                                    style: context.bodyMedium.copyWith(
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
