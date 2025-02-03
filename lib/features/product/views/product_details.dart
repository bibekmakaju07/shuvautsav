import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:objectbox/objectbox.dart';
import 'package:shuvautsavapp/app/app_route/app_delegate.dart';
import 'package:shuvautsavapp/app/extensions/context_extentions.dart';
import 'package:shuvautsavapp/app/loading/loading_indicator.dart';
import 'package:shuvautsavapp/app/storage/product_model.dart';
import 'package:shuvautsavapp/app/view/app.dart';
import 'package:shuvautsavapp/features/cart/views/cart.dart';
import 'package:shuvautsavapp/features/product/controller/wishlist_controller.dart';
import 'package:shuvautsavapp/features/product/model/product_details_model.dart';
import 'package:shuvautsavapp/features/product/views/widget/review_list_view.dart';
import 'package:shuvautsavapp/features/product/views/widget/review_widget.dart';
import 'package:shuvautsavapp/main.dart';
import 'package:shuvautsavapp/network/network_client.dart';

final productDetailsProvider =
    FutureProvider.autoDispose.family<ApiResponse, String>((ref, slug) async {
  final data = await NetworkService()
      .get(RequestApi(endPath: 'https://shuvautsav.com/api/v1/product/$slug'));
  return ApiResponse.fromJson(data.data['data']);
});

class ProductDetails extends ConsumerStatefulWidget {
  const ProductDetails({
    super.key,
    required this.slug,
  });
  final String slug;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends ConsumerState<ProductDetails>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  ValueNotifier<String?> displayImage = ValueNotifier(null);

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(productDetailsProvider(widget.slug));
    ref.listen(wishlistController, (prev, next) {
      next.maybeWhen(
        orElse: () {},
        error: (data, extra) {
          ref.read(toastProvider.notifier).update((_) {
            return (
              title: 'Failed to add product to wishlist',
              description: '',
              id: '12121',
              error: true,
            );
          });
        },
        success: (data, extra) {
          ref.read(toastProvider.notifier).update((_) {
            return (
              title: 'Product added to wish list',
              description: '',
              id: '12121',
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
    return Stack(
      children: [
        Container(
          color: Colors.white,
        ),
        Scaffold(
            backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
            appBar: AppBar(
              title: Row(
                children: [
                  Image.asset(
                    'assets/images/app_logo.png',
                    width: 100,
                  ),
                ],
              ),
            ),
            bottomSheet: state.maybeWhen(
              orElse: () {
                return const SizedBox();
              },
              data: (data) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 6)
                          .copyWith(
                    bottom: 15,
                  ),
                  child: IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        InkWell(
                          onTap: () {
                            ref.read(wishlistController.notifier).addToWishList(
                                  productId: '${data.product?.id}',
                                );
                          },
                          child: Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color:
                                    const Color.fromARGB(255, 219, 218, 218)),
                            child: Icon(
                              Icons.favorite_outline,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Theme.of(context).primaryColor,
                            ),
                            onPressed: () {
                              final savedData = ref
                                  .read(objectBoxProvider.notifier)
                                  .state
                                  .box<ProductDetailsEntity>()
                                  .get(data.product!.id);

                              ref
                                  .read(objectBoxProvider.notifier)
                                  .state
                                  .box<ProductDetailsEntity>()
                                  .put(
                                      ProductDetailsEntity(
                                        currency:
                                            data.product?.currency ?? 'NPR',
                                        id: data.product!.id,
                                        title: data.product?.title ?? '',
                                        description:
                                            data.product?.description ?? '',
                                        brand: data.product?.brand ?? '',
                                        image1: data.product?.image1 ?? '',
                                        price: double.tryParse(
                                                '${data.product?.price ?? '0'}') ??
                                            0,
                                        quantity: savedData != null
                                            ? (savedData.quantity + 1)
                                            : 1,
                                        weight: double.tryParse(
                                            '${data.product?.weight ?? 0}'),
                                        qty: data.product?.qty ?? 0,
                                      ),
                                      mode: savedData != null
                                          ? PutMode.update
                                          : PutMode.insert);
                              ref.read(toastProvider.notifier).update((_) {
                                return (
                                  error: false,
                                  description: '',
                                  title: savedData != null
                                      ? 'Updated in cart'
                                      : 'Added to cart',
                                  id: '1'
                                );
                              });
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text(
                                        savedData != null
                                            ? 'Updated to cart successfully'
                                            : 'Added to cart successfully',
                                        style: context.titleSmall.copyWith(
                                            fontWeight: FontWeight.w500),
                                      ),
                                      content: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Product Details',
                                            style: context.titleMedium.copyWith(
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Image.network(
                                                data.product?.image1 ?? '',
                                                height: 100,
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '${data.product?.title} added to cart',
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.fade,
                                                      style: context.titleMedium
                                                          .copyWith(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                    Text(
                                                      '${data.product?.currency} ${data.product?.price}',
                                                      style: context.titleMedium
                                                          .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      actions: [
                                        TextButton(
                                          child: Text('Continue Shopping'),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                        TextButton(
                                          child: Text('Goto Checkout'),
                                          onPressed: () {
                                            Navigator.pop(context);
                                            ref.push(RoutePage(
                                                child: CartPage(),
                                                name: 'CartPage'));
                                          },
                                        ),
                                      ],
                                    );
                                  });
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  HugeIcons.strokeRoundedShoppingCartAdd01,
                                  color: Colors.white,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Add to cart',
                                  style: context.titleMedium.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            body: state.maybeWhen(
              orElse: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              error: (error, stackTrace) {
                return Center(
                  child: Text('Something went wrong'),
                );
              },
              data: (data) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 60, bottom: 20),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: ValueListenableBuilder(
                                    valueListenable: displayImage,
                                    builder: (context, value, _) {
                                      return Image.network(
                                        value ?? data.product?.image1 ?? '',
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.25,
                                      );
                                    }),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        data.product?.image1 ?? '',
                                        data.product?.image2 ?? '',
                                        data.product?.image3 ?? '',
                                        data.product?.image4 ?? '',
                                        ...data.product?.productImages ?? [],
                                      ].map((e) {
                                        if (e.isEmpty) {
                                          return SizedBox();
                                        }
                                        return ClipRRect(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4)),
                                          child: Image.network(
                                            e,
                                            height: 40,
                                            width: 40,
                                            errorBuilder:
                                                (context, error, stackTrace) {
                                              return SizedBox();
                                            },
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        ...data.product?.productColorImage ??
                                            [],
                                      ].map((e) {
                                        if (e.isEmpty) {
                                          return SizedBox();
                                        }
                                        return ClipRRect(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4)),
                                          child: Image.network(
                                            e,
                                            height: 40,
                                            width: 40,
                                            errorBuilder:
                                                (context, error, stackTrace) {
                                              return SizedBox();
                                            },
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          )
                        ],
                      ),
                      ColoredBox(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              data.product?.title ?? '',
                                              style: context.titleMedium,
                                            ),
                                            Text(
                                              '${data.product?.currency ?? ''} ${data.product?.price ?? ''}',
                                              style: context.titleMedium
                                                  .copyWith(
                                                      color:
                                                          context.primaryColor),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        HtmlWidget(
                                          data.product?.description ?? '',
                                          textStyle: context.titleSmall,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                if ((data.product?.categories ?? []).isNotEmpty)
                                  Positioned(
                                    top: -10,
                                    child: Center(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 3, horizontal: 8),
                                          child: Text(
                                            data.product!.categories.first
                                                .title,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                              ],
                            ),
                            Divider(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TabBar(
                                    controller: _tabController,
                                    isScrollable: false,
                                    tabs: [
                                      Tab(
                                        text: 'Specification',
                                      ),
                                      Tab(
                                        text: 'Shipping',
                                      ),
                                      Tab(
                                        text: 'Review and Rating',
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  ListenableBuilder(
                                      listenable: _tabController,
                                      builder: (context, value) {
                                        return TabViewWidget(
                                          index: _tabController.index,
                                          children: [
                                            if (data.product!
                                                .productSpecification.isEmpty)
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  vertical: 10,
                                                  horizontal: 16,
                                                ),
                                                child: Text(
                                                  'No Specification for product found',
                                                ),
                                              )
                                            else
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10),
                                                child: Column(
                                                  children: data.product!
                                                      .productSpecification
                                                      .map((e) {
                                                    return Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                        bottom: 6,
                                                      ),
                                                      child: Row(
                                                        children: [
                                                          Expanded(
                                                            flex: 2,
                                                            child: Text(
                                                              "${e.specificationTitle} :-",
                                                              style: context
                                                                  .titleMedium
                                                                  .copyWith(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          Expanded(
                                                            flex: 3,
                                                            child: Text(
                                                              e.specificationValue,
                                                              style: context
                                                                  .titleMedium
                                                                  .copyWith(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  }).toList(),
                                                ),
                                              ),
                                            HtmlWidget(
                                              data.product?.shippingPolicy ??
                                                  'N/A',
                                              textStyle: context.titleSmall,
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                if (data.reviewExists ==
                                                        false &&
                                                    (data.user_email)
                                                        .isNotEmpty)
                                                  RatingAndReviewWidget(
                                                    slug: '${data.product?.id}',
                                                  ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                ReviewListWidget(
                                                  data: data,
                                                ),
                                              ],
                                            ),
                                          ],
                                        );
                                      }),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Divider(),
                            SizedBox(
                              height: 20,
                            ),
                            GridView.builder(
                              itemCount: data.related_products.length,
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              padding: const EdgeInsets.only(
                                top: 0,
                                right: 10,
                                left: 10,
                              ),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 16,
                                crossAxisSpacing: 16,
                                childAspectRatio: 0.8,
                              ),
                              itemBuilder: (context, index) {
                                final relatedProduct =
                                    data.related_products[index];
                                return InkWell(
                                  onTap: () {
                                    ref.pushReplacement(
                                      RoutePage(
                                        child: ProductDetails(
                                          slug: relatedProduct.slug,
                                        ),
                                        name:
                                            'ProductDetails${relatedProduct.slug}',
                                      ),
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                              255, 245, 193, 193)
                                          .withOpacity(0.3),
                                      borderRadius: BorderRadius.circular(
                                        10,
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        SizedBox(
                                          height: 100,
                                          child: Image.network(
                                            relatedProduct.image,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 12),
                                              child: Text(
                                                relatedProduct.title,
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Padding(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 16,
                                                ),
                                                child:
                                                    (relatedProduct.offer ==
                                                            null)
                                                        ? Text(
                                                            '${relatedProduct.currency} ${relatedProduct.price.toInt()}',
                                                            style: context
                                                                .textTheme()
                                                                .bodyLarge
                                                                ?.copyWith(
                                                                    color: context
                                                                        .primaryColor),
                                                          )
                                                        : Row(
                                                            children: [
                                                              Text(
                                                                  '${relatedProduct.currency} '),
                                                              Text(
                                                                '${relatedProduct.price.toInt()}',
                                                                style: context
                                                                    .textTheme()
                                                                    .bodyLarge
                                                                    ?.copyWith(
                                                                        color: context
                                                                            .primaryColor,
                                                                        decoration:
                                                                            TextDecoration.overline),
                                                              ),
                                                              Text(
                                                                '${relatedProduct.offer}',
                                                                style: context
                                                                    .textTheme()
                                                                    .bodyLarge
                                                                    ?.copyWith(
                                                                        color: context
                                                                            .primaryColor),
                                                              ),
                                                            ],
                                                          ))
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            )),
      ],
    );
  }
}

class TabViewWidget extends StatefulWidget {
  const TabViewWidget({
    super.key,
    required this.children,
    required this.index,
  });

  final int index;
  final List<Widget> children;

  @override
  State<TabViewWidget> createState() => _TabViewWidgetState();
}

class _TabViewWidgetState extends State<TabViewWidget> {
  @override
  Widget build(BuildContext context) {
    return widget.children[widget.index];
  }
}

String maskEmail(String email) {
  if (!email.contains('@')) {
    return email; // Return as is if not a valid email
  }

  final parts = email.split('@');
  final localPart = parts[0];
  final domain = parts[1];

  // If the local part is too short, mask it differently
  if (localPart.length <= 2) {
    return '${localPart[0]}***@$domain';
  }

  final maskedLocalPart =
      '${localPart[0]}${'*' * (localPart.length - 2)}${localPart[localPart.length - 1]}';
  return '$maskedLocalPart@$domain';
}
