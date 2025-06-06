import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shuvautsavapp/app/app_route/app_delegate.dart';
import 'package:shuvautsavapp/app/view/app.dart';
import 'package:shuvautsavapp/features/product/controller/product_controller.dart';
import 'package:shuvautsavapp/features/product/model/category_product_model.dart';
import 'package:shuvautsavapp/features/product/model/product_model.dart';
import 'package:shuvautsavapp/features/product/views/product_details.dart';
import 'package:shuvautsavapp/features/product/views/product_page.dart';

class DashboardProductWidget extends ConsumerStatefulWidget {
  const DashboardProductWidget(this.products, {super.key});

  final List<ProductModel> products;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DashboardProductWidgetState();
}

class _DashboardProductWidgetState
    extends ConsumerState<DashboardProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            const Text(
              'Browse Product',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              widget.products.length > 15
                  ? '15+'
                  : '${widget.products.length - 1}+',
              style: const TextStyle(fontWeight: FontWeight.w400),
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                ref.push(
                  RoutePage(
                    child: const ProductPage(
                      title: null,
                    ),
                    name: 'ProductPage',
                  ),
                );
              },
              child: const Text(
                'See All',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(widget.products.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(right: 16),
                child: InkWell(
                  onTap: () {
                    ref.push(RoutePage(
                        child: ProductDetails(
                          slug: widget.products[index].slug,
                        ),
                        name: 'ProductDetails'));
                  },
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.network(
                            widget.products[index].image,
                            height: 150,
                          ),
                        ),
                        Text(
                          widget.products[index].title,
                        ),
                        // Text(
                        //   data[index].description ?? '',
                        // ),
                        const SizedBox(),
                        Text(
                          '${widget.products[index].currency} ${widget.products[index].price.toInt()}',
                          style: context.titleMedium.copyWith(
                            color: context.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}

enum DisplayType {
  grid,
  list,
}

class DashboardGrid extends ConsumerStatefulWidget {
  const DashboardGrid(
      {super.key,
      required this.title,
      required this.slug,
      this.type = DisplayType.grid,
      required this.products});
  final String title;
  final DisplayType type;
  final String slug;
  final List<CategoryProduct> products;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DashboardGridState();
}

class _DashboardGridState extends ConsumerState<DashboardGrid> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.products.isEmpty) {
      return SizedBox();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Divider(
          height: 1,
          thickness: 0.2,
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title,
              style: context.titleLarge.copyWith(
                color: Theme.of(context).primaryColor,
              ),
            ),
            TextButton(
                child: Row(
                  children: [
                    Text('View All'),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                    )
                  ],
                ),
                onPressed: () {
                  ref.push(RoutePage(
                    child: ProductPage(
                      categoriesType: CategoriesType.catSlug,
                      slug: widget.slug,
                      title: widget.title,
                    ),
                    name: 'ProductPage',
                  ));
                }),
          ],
        ),
        Divider(
          height: 5,
        ),
        SizedBox(
          height: 6,
        ),
        if (DisplayType.grid == widget.type)
          MasonryGridView.count(
            padding: EdgeInsets.symmetric(
              horizontal: 0,
              vertical: 0,
            ),
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            shrinkWrap: true,
            itemCount: widget.products.length,
            itemBuilder: (context, index) {
              final product = widget.products[index];
              return InkWell(
                onTap: () {
                  ref.push(
                    RoutePage(
                      child: ProductDetails(
                        slug: product.slug,
                      ),
                      name: 'ProductDetails',
                    ),
                  );
                },
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
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
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                              style: context.titleMedium.copyWith(
                                color: context.primaryColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          )
        else
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.only(),
            itemCount: widget.products.length,
            itemBuilder: (context, index) {
              final product = widget.products[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromARGB(255, 240, 237, 237),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 25,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            product.image,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                product.title,
                                style: context.titleMedium
                                    .copyWith(color: Colors.black),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              HtmlWidget(
                                product.description,
                                textStyle: context.labelSmall.copyWith(
                                  fontSize: 12,
                                  color:
                                      const Color.fromARGB(255, 186, 183, 183),
                                ),
                                customWidgetBuilder: (element) {
                                  return Text(
                                    element.text,
                                    maxLines: 1,
                                    style: context.labelSmall.copyWith(
                                      fontSize: 12,
                                      color:
                                          const Color.fromARGB(255, 94, 92, 92),
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  );
                                },
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '${product.currency}. ',
                                          style: context.labelSmall.copyWith(
                                            color: context.primaryColor,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' ${product.price.toInt()}',
                                          style: context.titleSmall.copyWith(
                                            color: context.primaryColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 6,
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
      ],
    );
  }
}
