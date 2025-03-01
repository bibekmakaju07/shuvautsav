import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:shuvautsavapp/app/app_route/app_delegate.dart';
import 'package:shuvautsavapp/app/view/app.dart';
import 'package:shuvautsavapp/app/view/custom_appbar.dart';
import 'package:shuvautsavapp/features/category/model/category_model.dart';
import 'package:shuvautsavapp/features/category/model/dashboard_product_model.dart';
import 'package:shuvautsavapp/features/category/views/category.dart';
import 'package:shuvautsavapp/features/product/controller/product_controller.dart';
import 'package:shuvautsavapp/features/product/views/dashboard_product_widget.dart';
import 'package:shuvautsavapp/features/product/views/product_page.dart';
import 'package:shuvautsavapp/features/product/views/product_search_page.dart';
import 'package:shuvautsavapp/network/network_client.dart';

final dashboardDataProvider =
    FutureProvider.autoDispose<DashboardProductResponse>((ref) async {
  final response = await NetworkService()
      .get(RequestApi(endPath: 'https://shuvautsav.com/api/v1/home'));

  final data = DashboardProductResponse.fromJson(response.data);
  return data;
});

class HomePage extends StatefulHookConsumerWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(dashboardDataProvider);
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/app_logo.png',
                width: 100,
              ),
              const Spacer(),
              WishListButton(ref: ref),
              // CartIconButton(ref: ref),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          state.maybeWhen(
            orElse: () {
              return CircularProgressIndicator();
            },
            data: (data) {
              return Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        readOnly: true,
                        onTap: () {
                          ref.push(RoutePage(
                              child: const ProductSearchPage(
                                title: null,
                              ),
                              name: 'ProductSearchPage'));
                        },
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            HugeIcons.strokeRoundedSearch02,
                          ),
                          hintText: 'Search Product',
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
                      const SizedBox(
                        height: 20,
                      ),
                      HomeCategoryWidget(
                        category: data.data.categories,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      DashboardProductWidget(data.data.products),
                      DashboardGrid(
                        title: data.data.category1.title,
                        slug: 'celebration',
                        products: data.data.products1,
                      ),
                      DashboardGrid(
                        title: data.data.category2.title,
                        slug: 'celebration',
                        products: data.data.products2,
                      ),
                      SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

//Home category widget

class HomeCategoryWidget extends ConsumerStatefulWidget {
  const HomeCategoryWidget({
    super.key,
    required this.category,
  });
  final List<ProductCategory> category;

  @override
  ConsumerState<HomeCategoryWidget> createState() => _HomeCategoryWidgetState();
}

class _HomeCategoryWidgetState extends ConsumerState<HomeCategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              'Browse Categories',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              widget.category.length > 15 ? '15+' : '${widget.category.length}',
              style: const TextStyle(fontWeight: FontWeight.w400),
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                ref.push(RoutePage(
                    child: const CategoryPage(), name: 'CategoryPage'));
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
              children: List.generate(widget.category.length, (index) {
                final data = widget.category[index];
                return Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: InkWell(
                    onTap: () {
                      // ref.push(RoutePage(
                      //     child:  ProductDetails(),
                      //     name: 'ProductDetails'));
                      ref.push(RoutePage(
                        child: ProductPage(
                          title: '',
                          categoriesType: CategoriesType.catSlug,
                          slug: data.slug,
                        ),
                        name: 'ProductPage',
                      ));
                    },
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.network(
                            data.image,
                            height: 60,
                            width: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          data.title,
                          style: context.titleSmall,
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            )),
      ],
    );
  }
}
