import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:shuvautsavapp/app/app_route/app_delegate.dart';
import 'package:shuvautsavapp/app/view/app.dart';
import 'package:shuvautsavapp/features/category/model/category_model.dart';
import 'package:shuvautsavapp/features/category/views/category.dart';
import 'package:shuvautsavapp/features/product/controller/product_controller.dart';
import 'package:shuvautsavapp/features/product/views/dashboard_product_widget.dart';
import 'package:shuvautsavapp/features/product/views/product_page.dart';
import 'package:shuvautsavapp/network/network_client.dart';

class HomePage extends StatefulHookConsumerWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
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
              InkWell(
                onTap: () {
                  ref.read(toastProvider.notifier).update((cb) {
                    return (
                      description: '',
                      title: 'Coming Soon',
                      id: '1212121',
                      error: false
                    );
                  });
                },
                child: Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xffEAF0F4), width: 1),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(3),
                    ),
                  ),
                  child: const Icon(
                    HugeIcons.strokeRoundedSearch01,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  ref.read(toastProvider.notifier).update((cb) {
                    return (
                      description: '',
                      title: 'Coming Soon',
                      id: '1212121',
                      error: false
                    );
                  });
                },
                child: Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xffEAF0F4),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        3,
                      ),
                    ),
                  ),
                  child: const Icon(
                    HugeIcons.strokeRoundedNotification03,
                  ),
                ),
              )
            ],
          ),
          Expanded(
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
                          child: const ProductPage(), name: 'ProductPage'));
                    },
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        HugeIcons.strokeRoundedLocation07,
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
                  const SizedBox(
                    height: 20,
                  ),
                  const HomeCategoryWidget(),
                  const SizedBox(
                    height: 24,
                  ),
                  const DashboardProductWidget(),
                  DashboardGrid(
                    title: 'Celebration',
                    slug: 'celebration',
                  ),
                  DashboardGrid(
                    title: 'धार्मिक',
                    slug: 'religious-items',
                    type: DisplayType.list,
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

//Home category widget

final homeCategoryProvider =
    FutureProvider.autoDispose<List<Category>>((ref) async {
  final response = await NetworkService()
      .get(RequestApi(endPath: 'https://shuvautsav.com/api/v1/category'));

  final data = CategoryResponse.fromJson(response.data);
  return data.data.categories;
});

class HomeCategoryWidget extends ConsumerStatefulWidget {
  const HomeCategoryWidget({
    super.key,
  });

  @override
  ConsumerState<HomeCategoryWidget> createState() => _HomeCategoryWidgetState();
}

class _HomeCategoryWidgetState extends ConsumerState<HomeCategoryWidget> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(homeCategoryProvider);
    return Column(
      children: [
        Row(
          children: [
            const Text(
              'Browser Categories',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            state.maybeWhen(
              orElse: () {
                return const SizedBox.square(
                  dimension: 12,
                  child: CircularProgressIndicator(
                    strokeWidth: 1,
                  ),
                );
              },
              data: (data) {
                return Text(
                  data.length > 15 ? '15+' : '${data.length}',
                  style: const TextStyle(fontWeight: FontWeight.w400),
                );
              },
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
            child: state.maybeWhen(
              orElse: () {
                return const SizedBox();
              },
              data: (data) {
                return Row(
                  children: List.generate(data.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: InkWell(
                        onTap: () {
                          // ref.push(RoutePage(
                          //     child:  ProductDetails(),
                          //     name: 'ProductDetails'));
                          ref.push(RoutePage(
                            child: ProductPage(
                              categoriesType: CategoriesType.catSlug,
                              slug: data[index].slug,
                            ),
                            name: 'ProductPage',
                          ));
                        },
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.network(
                                data[index].image,
                                height: 60,
                                width: 60,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              data[index].title,
                              style: context.titleSmall,
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                );
              },
            )),
      ],
    );
  }
}
