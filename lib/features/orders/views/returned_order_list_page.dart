import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:shuvautsavapp/app/app_route/app_delegate.dart';
import 'package:shuvautsavapp/app/extensions/context_extentions.dart';
import 'package:shuvautsavapp/app/loading/loading_indicator.dart';
import 'package:shuvautsavapp/app/view/app.dart';
import 'package:shuvautsavapp/features/orders/controller/order_return_controller.dart';
import 'package:shuvautsavapp/features/orders/model/orders_model.dart';
import 'package:shuvautsavapp/features/orders/views/order_details_page.dart';
import 'package:shuvautsavapp/features/orders/views/order_status_tab_page.dart';
import 'package:shuvautsavapp/network/network_client.dart';

final returnedOrdersProvider =
    FutureProvider.autoDispose<OrderResponse>((ref) async {
  final data = await NetworkService().get(
    RequestApi(
      endPath: 'https://shuvautsav.com/api/v1/customer/orders/returned',
    ),
  );
  return OrderResponse.fromJson(data.data);
});

class ReturnedOrderListPage extends ConsumerStatefulWidget {
  const ReturnedOrderListPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OrderListPageState();
}

class _OrderListPageState extends ConsumerState<ReturnedOrderListPage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(returnedOrdersProvider);

    ref.listen(returnOrderController, (prev, next) {
      next.maybeWhen(
        orElse: () {},
        success: (data, extra) {
          ref.read(toastProvider.notifier).update((cb) {
            return (
              title: data.data.message,
              error: false,
              description: '',
              id: '121212f',
            );
          });
        },
        error: (data, extra) {
          ref.read(toastProvider.notifier).update((cb) {
            return (
              title: 'Something went wrong',
              error: true,
              description: '',
              id: 'q11231',
            );
          });
        },
        loading: (loading, data) {
          if (loading) {
            LoadingIndicator.instance.show(context);
          } else {
            LoadingIndicator.instance.hide();
          }
        },
      );
    });

    return state.maybeWhen(
      orElse: () {
        return SizedBox();
      },
      loading: () {
        return Center(
          child: CircularProgressIndicator(),
        );
      },
      error: (error, stackTrace) {
        return Center(
          child: Text('Returned Order List is Empty'),
        );
      },
      data: (data) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(
            bottom: 40,
          ),
          child: ListView.builder(
            itemCount: data.data.length,
            itemBuilder: (context, index) {
              final order = data.data[index];
              return Padding(
                padding: const EdgeInsets.only(top: 16),
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16)
                                        .copyWith(
                                  top: 20,
                                  bottom: 12,
                                ),
                                child: Text(
                                  'Actions',
                                  style: context.titleMedium,
                                ),
                              ),
                              ListTile(
                                leading: Icon(
                                  HugeIcons.strokeRoundedEye,
                                ),
                                onTap: () {
                                  ref.push(
                                    RoutePage(
                                      child: OrderDetailsPage(
                                                                        orderId:    order.orderId,
                                        id: '${order.id}',
                                      ),
                                      name: 'OrderDetailsPage',
                                    ),
                                  );
                                  Navigator.pop(context);
                                },
                                title: Text('View Order'),
                              ),
                              ListTile(
                                leading: Icon(
                                  HugeIcons.strokeRoundedCancel02,
                                ),
                                onTap: () {
                                  ref
                                      .read(returnOrderController.notifier)
                                      .cancelReturnOrder(orderId: order.id);
                                  Navigator.pop(context);
                                },
                                title: Text('Cancel Return Order'),
                              ),
                              ListTile(
                                dense: true,
                              ),
                            ],
                          );
                        });
                  },
                  child: Card(
                    child: Stack(
                      children: [
                        Padding(
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
                                    style: context
                                        .textTheme()
                                        .bodyMedium
                                        ?.copyWith(
                                          fontWeight: FontWeight.w700,
                                        ),
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
                        if ((statusesWithColor[order.statusId]?.status ?? '')
                            .isNotEmpty)
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                color: statusesWithColor[order.statusId]?.color,
                                borderRadius: BorderRadius.circular(
                                  20,
                                ).copyWith(
                                  topRight: Radius.circular(0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 4,
                                  horizontal: 10,
                                ),
                                child: Text(
                                  (statusesWithColor[order.statusId]?.status ??
                                          '')
                                      .toUpperCase(),
                                  style: context.bodyMedium.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
