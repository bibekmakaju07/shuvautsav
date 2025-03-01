import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shuvautsavapp/app/app_route/app_delegate.dart';
import 'package:shuvautsavapp/app/view/custom_appbar.dart';
import 'package:shuvautsavapp/features/category/model/category_model.dart';
import 'package:shuvautsavapp/features/product/controller/product_controller.dart';
import 'package:shuvautsavapp/features/product/views/product_page.dart';
import 'package:shuvautsavapp/network/network_client.dart';

final categoryProvider =
    FutureProvider.autoDispose<List<ProductCategory>>((ref) async {
  final response = await NetworkService()
      .get(RequestApi(endPath: 'https://shuvautsav.com/api/v1/category'));

  final data = CategoryResponse.fromJson(response.data);
  return data.data.categories;
});

class CategoryPage extends ConsumerStatefulWidget {
  const CategoryPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CategoryPageState();
}

class _CategoryPageState extends ConsumerState<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(categoryProvider);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            // image: DecorationImage(
            //   image: AssetImage(
            //     'assets/images/diyo2.jpg',
            //   ),
            // ),
            ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/app_logo.png',
                    width: 100,
                  ),
                  const Spacer(),
                  WishListButton(ref: ref),
                  SizedBox(
                    width: 10,
                  ),
                  CartIconButton(ref: ref),
                  const SizedBox(
                    width: 10,
                  ),
                  // Container(
                  //   width: 42,
                  //   height: 42,
                  //   decoration: const BoxDecoration(
                  //     // border: Border.all(
                  //     //   color: Theme.of(context).primaryColor,
                  //     //   width: 0.3,
                  //     // ),
                  //     borderRadius: BorderRadius.all(
                  //       Radius.circular(3),
                  //     ),
                  //   ),
                  //   child: const Icon(
                  //     HugeIcons.strokeRoundedSearch01,
                  //   ),
                  // ),
                  const SizedBox(
                    width: 10,
                  ),
                  // Container(
                  //   width: 42,
                  //   height: 42,
                  //   decoration: BoxDecoration(
                  //     border: Border.all(
                  //       color: Theme.of(context).primaryColor,
                  //       width: 0.3,
                  //     ),
                  //     borderRadius: const BorderRadius.all(
                  //       Radius.circular(
                  //         3,
                  //       ),
                  //     ),
                  //   ),
                  //   child: const Icon(
                  //     HugeIcons.strokeRoundedNotification03,
                  //   ),
                  // )
                ],
              ),
              state.maybeWhen(
                orElse: () {
                  return const SizedBox();
                },
                error: (error, stackTrace) {
                  return Text('$error');
                },
                data: (data) {
                  return Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Column(
                            children: List.generate(
                              data.length,
                              (index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10)
                                          .copyWith(),
                                  child: ClipRect(
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                        sigmaX: 5,
                                        sigmaY: 5,
                                      ),
                                      child: InkWell(
                                        onTap: () {
                                          ref.push(RoutePage(
                                            child: ProductPage(
                                              categoriesType:
                                                  CategoriesType.catSlug,
                                              slug: data[index].slug,
                                              title: data[index].title,
                                            ),
                                            name: 'ProductPage',
                                          ));
                                          // ref
                                          //     .read(toastProvider.notifier)
                                          //     .update((cb) {
                                          //   return (
                                          //     description: '',
                                          //     title: 'No item found for category',
                                          //     id: '1212121',
                                          //     error: true
                                          //   );
                                          // });
                                        },
                                        child: Container(
                                          height: 100,
                                          decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .primaryColor
                                                .withOpacity(0.15),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          width: double.infinity,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 2,
                                                child: Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      vertical: 10,
                                                      horizontal: 16,
                                                    ),
                                                    child: Text(
                                                      data[index].title,
                                                      style: const TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 2,
                                                child: Image.network(
                                                  data[index].image,
                                                  fit: BoxFit.fitWidth,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: 100,
                          ),
                        ],
                      ),
                    ),
                  );
                },
                loading: () {
                  return const Center(child: CircularProgressIndicator());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
