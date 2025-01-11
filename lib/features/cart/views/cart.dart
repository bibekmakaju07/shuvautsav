import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:shuvautsavapp/app/app.dart';
import 'package:shuvautsavapp/app/app_route/app_delegate.dart';
import 'package:shuvautsavapp/app/loading/loading_indicator.dart';
import 'package:shuvautsavapp/app/storage/product_model.dart';
import 'package:shuvautsavapp/features/cart/controller/checkout_controller.dart';
import 'package:shuvautsavapp/features/cart/model/cart_list_model.dart';
import 'package:shuvautsavapp/features/cart/views/checkout_form.dart';
import 'package:shuvautsavapp/main.dart';
import 'package:shuvautsavapp/objectbox.g.dart';

class CartPage extends StatefulHookConsumerWidget {
  const CartPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CardPageState();
}

class _CardPageState extends ConsumerState<CartPage> {
  ValueNotifier<List<int>> selectedProduct = ValueNotifier([]);

  CartModel cartModel = CartModel();
  @override
  Widget build(BuildContext context) {
    ref.listen(checkoutProvider('checkout'), (prev, next) {
      next.maybeWhen(
        orElse: () {},
        success: (data, extra) {
          ref.push(
            RoutePage(
              child: CheckoutForm(
                locationModel: data,
                cartDetails: extra ?? {},
                cartModel: cartModel,
              ),
              name: 'CheckoutForm',
            ),
          );
          ref.read(toastProvider.notifier).update((_) {
            return (
              title: 'Checkout Successfull',
              description: '',
              id: 'dasdasd',
              error: false,
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      bottomSheet: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: ValueListenableBuilder(
              valueListenable: selectedProduct,
              builder: (context, value, _) {
                final streamData = ref
                    .read(objectBoxProvider.notifier)
                    .state
                    .box<ProductDetailsEntity>()
                    .query(ProductDetailsEntity_.id.oneOf(value))
                    .watch(triggerImmediately: true)
                    .map((e) => e.find());
                final cardData = ref
                    .read(objectBoxProvider.notifier)
                    .state
                    .box<ProductDetailsEntity>()
                    .getManyAsync(value);

                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    StreamBuilder(
                        stream: streamData,
                        builder: (context, snap) {
                          if (snap.hasData) {
                            final data = snap.data!;
                            double totalPrice = 0;
                            for (var e in data) {
                              totalPrice = totalPrice + (e.quantity * e.price);
                            }
                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal: 16,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Total Charge',
                                        style: context.titleMedium,
                                      ),
                                      Text(
                                        'RS.$totalPrice',
                                        style: context.titleMedium,
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 25),
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: InkWell(
                                      onTap: () async {
                                        final token =
                                            await FlutterSecureStorage().read(
                                                    key: 'access_token') ??
                                                '';
                                        if (token.isEmpty) {
                                          ref
                                              .read(toastProvider.notifier)
                                              .update((cb) {
                                            return (
                                              title: 'Please login to checkout',
                                              error: true,
                                              description: '',
                                              id: 'login',
                                            );
                                          });
                                          return;
                                        }
                                        final list = [];
                                        final List<Cart> carts = [];
                                        for (var e in data) {
                                          list.add({
                                            "id": e.id,
                                            "quantity": e.quantity,
                                            "total_weight":
                                                (e.weight ?? 0.0) * e.quantity,
                                            "total_amount":
                                                (e.price) * e.quantity,
                                          });
                                          carts.add(
                                            Cart(
                                              id: '${e.id}',
                                              productName: e.title,
                                              quantity: "${e.quantity}",
                                              total_amount:
                                                  '${(e.price) * e.quantity}',
                                              total_weight:
                                                  '${(e.weight ?? 0.0) * e.quantity}',
                                            ),
                                          );
                                        }
                                        if (carts.isEmpty) {
                                          ref
                                              .read(toastProvider.notifier)
                                              .update((_) {
                                            return (
                                              title:
                                                  'Your cart is empty! .Please click on item to add/remove',
                                              description: '',
                                              id: '12121',
                                              error: false,
                                            );
                                          });
                                          return;
                                        }
                                        cartModel = CartModel(
                                          cartId:
                                              '${carts.first.id}-${DateTime.now().microsecondsSinceEpoch}',
                                          carts: Carts(
                                            cart: carts,
                                          ),
                                        );

                                        ref
                                            .read(checkoutProvider('checkout')
                                                .notifier)
                                            .checkout(params: {"cart": list});
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(16)),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8, horizontal: 12),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Icon(
                                                HugeIcons
                                                    .strokeRoundedShoppingCartAdd01,
                                                color: Colors.white,
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                'Checkout (${data.isEmpty ? '0' : data.length})',
                                                style: context.titleMedium
                                                    .copyWith(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }
                          return SizedBox();
                        }),
                  ],
                );
              }),
        ),
      ),
      body: StreamBuilder<List<ProductDetailsEntity>>(
        stream: ref
            .read(objectBoxProvider.notifier)
            .state
            .box<ProductDetailsEntity>()
            .query()
            .watch(triggerImmediately: true)
            .map((q) => q.find()),
        builder: (context, s) {
          if (s.hasData) {
            if ((s.data ?? []).isEmpty) {
              return Center(
                  child: Text(
                'Cart is Empty',
                style: context.titleMedium,
              ));
            }
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Align(
                  child: Text(
                    'Tap to select for checkout',
                    style: context.titleSmall,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: s.data!.length,
                    itemBuilder: (context, index) {
                      final data = s.data![index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                        child: InkWell(
                          onTap: () {
                            if (selectedProduct.value.contains(data.id)) {
                              final list = [...selectedProduct.value];
                              list.remove(data.id);
                              selectedProduct.value = list;
                            } else {
                              selectedProduct.value = [
                                ...selectedProduct.value,
                                data.id
                              ];
                            }
                          },
                          child: ValueListenableBuilder(
                              valueListenable: selectedProduct,
                              builder: (context, value, _) {
                                return Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: value.contains(data.id)
                                        ? Colors.red.withOpacity(0.2)
                                        : const Color.fromARGB(
                                            255, 240, 237, 237),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 25,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          child: Image.network(
                                            data.image1,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 75,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                            right: 5,
                                            left: 10,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                data.title,
                                                style: context.titleMedium
                                                    .copyWith(
                                                        color: Colors.black),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              HtmlWidget(
                                                data.description,
                                                textStyle:
                                                    context.labelSmall.copyWith(
                                                  fontSize: 12,
                                                  color: const Color.fromARGB(
                                                      255, 186, 183, 183),
                                                ),
                                                customWidgetBuilder: (element) {
                                                  return Text(
                                                    element.text,
                                                    maxLines: 1,
                                                    style: context.labelSmall
                                                        .copyWith(
                                                      fontSize: 12,
                                                      color:
                                                          const Color.fromARGB(
                                                              255, 94, 92, 92),
                                                    ),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  );
                                                },
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  RichText(
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: 'Price : ',
                                                          style: context
                                                              .labelSmall,
                                                        ),
                                                        TextSpan(
                                                          text: '${data.price}',
                                                          style: context
                                                              .titleSmall,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  RichText(
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text:
                                                              'Total Price : ',
                                                          style: context
                                                              .labelSmall,
                                                        ),
                                                        TextSpan(
                                                          text:
                                                              '${data.price * data.quantity}',
                                                          style: context
                                                              .titleSmall,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 6,
                                              ),
                                              // RichText(
                                              //   text: TextSpan(
                                              //     children: [
                                              //       TextSpan(
                                              //         text: 'Total Weight : ',
                                              //         style: context.labelSmall,
                                              //       ),
                                              //       TextSpan(
                                              //         text:
                                              //             '${data.weight ?? 0 * data.quantity}',
                                              //         style: context.titleSmall,
                                              //       ),
                                              //     ],
                                              //   ),
                                              // ),
                                              Row(
                                                children: [
                                                  InkWell(
                                                    onTap: () {
                                                      if (data.quantity > 1) {
                                                        data.quantity =
                                                            data.quantity - 1;

                                                        ref
                                                            .read(
                                                                objectBoxProvider
                                                                    .notifier)
                                                            .state
                                                            .box<
                                                                ProductDetailsEntity>()
                                                            .put(
                                                              data,
                                                              mode: PutMode
                                                                  .update,
                                                            );
                                                      }
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors
                                                                  .black)),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(3),
                                                        child:
                                                            Icon(Icons.remove),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 12,
                                                    ),
                                                    child: Text(
                                                      '${data.quantity}',
                                                      style:
                                                          context.labelMedium,
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      data.quantity =
                                                          data.quantity + 1;

                                                      ref
                                                          .read(
                                                              objectBoxProvider
                                                                  .notifier)
                                                          .state
                                                          .box<
                                                              ProductDetailsEntity>()
                                                          .put(
                                                            data,
                                                            mode:
                                                                PutMode.update,
                                                          );
                                                      selectedProduct.value =
                                                          selectedProduct.value;
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors
                                                                  .black)),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(3),
                                                        child: Icon(Icons.add),
                                                      ),
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  InkWell(
                                                    onTap: () {
                                                      ref
                                                          .read(
                                                              objectBoxProvider
                                                                  .notifier)
                                                          .state
                                                          .box<
                                                              ProductDetailsEntity>()
                                                          .remove(data.id);
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(6),
                                                          border: Border.all(
                                                              color:
                                                                  Colors.red),
                                                          color: Colors.red),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(3),
                                                        child: Icon(
                                                          Icons.delete_outline,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          }
          return SizedBox();
        },
      ),
    );
  }
}
