import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:shuvautsavapp/app/app_route/app_delegate.dart';
import 'package:shuvautsavapp/app/loading/loading_indicator.dart';
import 'package:shuvautsavapp/app/storage/product_model.dart';
import 'package:shuvautsavapp/app/view/app.dart';
import 'package:shuvautsavapp/features/cart/views/cart.dart';
import 'package:shuvautsavapp/features/product/controller/filter_controller.dart';
import 'package:shuvautsavapp/features/product/controller/product_controller.dart';
import 'package:shuvautsavapp/features/product/controller/product_search_controller.dart';
import 'package:shuvautsavapp/features/product/views/product_details.dart';
import 'package:shuvautsavapp/features/product/views/widget/product_filter.dart';
import 'package:shuvautsavapp/features/product/views/wishlist_page.dart';
import 'package:shuvautsavapp/main.dart';

class ProductSearchPage extends ConsumerStatefulWidget {
  const ProductSearchPage({
    super.key,
    this.slug,
    this.categoriesType = CategoriesType.product,
    required this.title,
  });

  final CategoriesType categoriesType;

  final String? slug;

  final String? title;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProductPageState();
}

class _ProductPageState extends ConsumerState<ProductSearchPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   ref
    //       .read(productSearchProvider(widget.categoriesType.name).notifier)
    //       .searchProduct(slug: widget.slug, type: widget.categoriesType);
    // });

    _scrollController.addListener(_listen);
  }

  _listen() {
    if (_scrollController.hasClients) {
      if (_scrollController.position.maxScrollExtent -
              _scrollController.position.pixels <=
          100) {
        if (keyword.isNotEmpty) {
          ref
              .read(productSearchProvider.notifier)
              .searchProduct(keyword: keyword);
        }
      }
    }
  }

  String keyword = '';
  Timer? _debounce;

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(filterCategoryProvider, (prev, next) {
      next.maybeWhen(
        orElse: () {},
        success: (data, extra) {
          _scaffoldKey.currentState!.openEndDrawer();
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
    final state = ref.watch(productSearchProvider);
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        key: _scaffoldKey,
        endDrawer: const FilterDrawer(),
        body: SafeArea(
          top: true,
          bottom: true,
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SizedBox.square(
                      dimension: 30,
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  if (widget.title != null)
                    Text(
                      widget.title!,
                      style: context.titleMedium.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  else
                    Image.asset(
                      'assets/images/app_logo.png',
                      width: 100,
                    ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      ref.push(RoutePage(
                          child: WishListProductList(),
                          name: 'WishListProductList'));
                    },
                    child: Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xffEAF0F4), width: 1),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(3),
                        ),
                      ),
                      child: const Icon(
                        HugeIcons.strokeRoundedFavourite,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      ref.push(RoutePage(child: CartPage(), name: 'CartPage'));
                    },
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: 42,
                          height: 42,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0xffEAF0F4), width: 1),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(3),
                            ),
                          ),
                          child: const Icon(
                            HugeIcons.strokeRoundedShoppingCart01,
                          ),
                        ),
                        Positioned(
                          top: -0,
                          right: 0,
                          child: StreamBuilder(
                              stream: ref
                                  .read(objectBoxProvider.notifier)
                                  .state
                                  .box<ProductDetailsEntity>()
                                  .query()
                                  .watch(triggerImmediately: true)
                                  .map((q) => q.find().length),
                              builder: (context, snap) {
                                if (snap.hasData && snap.data! > 0) {
                                  return CircleAvatar(
                                    backgroundColor:
                                        Theme.of(context).primaryColor,
                                    radius: 10,
                                    child: Text(
                                      '${snap.data}',
                                      style: context.labelSmall
                                          .copyWith(color: Colors.white),
                                    ),
                                  );
                                }
                                return SizedBox();
                              }),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 10,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        onChanged: (value) {
                          if (_debounce?.isActive ?? false) _debounce!.cancel();
                          _debounce = Timer(Duration(milliseconds: 500), () {
                            ref
                                .read(productSearchProvider.notifier)
                                .searchProduct(keyword: keyword);
                          });
                        },
                        decoration: const InputDecoration(
                          isDense: true,
                          prefixIcon: Icon(
                            HugeIcons.strokeRoundedSearch02,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xffEAF0F4),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(3),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                  ],
                ),
              ),
              if (state.isLoading && state.productResponse == null)
                Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              else if (state.error != null && state.productResponse == null)
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.error,
                              size: 40,
                              color: Colors.red,
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              "Error Loading Product",
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Retry'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              else if (state.productResponse != null)
                if ((state.productResponse?.data.products ?? []).isEmpty)
                  Expanded(
                    child: SizedBox(
                      child: Center(
                        child: Text(
                          'No Product/s Found',
                        ),
                      ),
                    ),
                  )
                else
                  Expanded(
                    child: SingleChildScrollView(
                      controller: _scrollController,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          MasonryGridView.count(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 20,
                            ),
                            physics: NeverScrollableScrollPhysics(),
                            crossAxisCount: 2,
                            mainAxisSpacing: 16,
                            crossAxisSpacing: 8,
                            shrinkWrap: true,
                            itemCount:
                                state.productResponse!.data.products.length,
                            itemBuilder: (context, index) {
                              final product =
                                  state.productResponse!.data.products[index];
                              return InkWell(
                                onTap: () {
                                  ref.push(RoutePage(
                                      child: ProductDetails(
                                        slug: product.slug,
                                      ),
                                      name: 'ProductDetails'));
                                },
                                child: Card(
                                  elevation: 2,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            const BorderRadius.vertical(
                                          top: Radius.circular(12),
                                        ),
                                        child: Image.network(
                                          product.image,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              product.title,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                              ),
                                            ),
                                            const SizedBox(height: 4),
                                            Text(
                                                "${product.currency}. ${product.price.toInt() ?? 0}",
                                                style: context.titleMedium
                                                    .copyWith(
                                                  color: context.primaryColor,
                                                )),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                          if (state.isLoading)
                            Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: CircularProgressIndicator(),
                              ),
                            )
                          else if (state.error != null)
                            Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: Text(
                                  'Error',
                                  style: context.titleMedium.copyWith(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
