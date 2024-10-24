import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:shuvautsavapp/features/product/model/product_model.dart';
import 'package:shuvautsavapp/network/network_client.dart';

final productProvider =
    FutureProvider.autoDispose<List<ProductModel>>((ref) async {
  final data = await NetworkService()
      .get(RequestApi(endPath: 'https://shuvautsav.com/api/products'));

  List<ProductModel> productList = [];
  for (var da in data.data) {
    productList.add(ProductModel.fromJson(da));
  }

  return productList;
});

class ProductList extends ConsumerStatefulWidget {
  const ProductList({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProductListState();
}

class _ProductListState extends ConsumerState<ProductList> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(productProvider);
    return Scaffold(
      body: Column(
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
              Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffEAF0F4), width: 1),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(3),
                  ),
                ),
                child: const Icon(
                  HugeIcons.strokeRoundedSearch01,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
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
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              children: List.generate(
                10,
                (index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      right: 16,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Theme.of(context).primaryColor,
                          width: 0.5,
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        child: Text('All'),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          state.maybeWhen(
            orElse: () {
              return const SizedBox();
            },
            loading: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            data: (data) {
              return Expanded(
                child: GridView.builder(
                  itemCount: data.length,
                  padding: const EdgeInsets.only(
                    top: 20,
                    right: 10,
                    left: 10,
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: 0.8,
                  ),
                  itemBuilder: (context, index) {
                    return Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.yellowAccent.withOpacity(0.3),
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
                                    'https://shuvautsav.com/images/product/${data[index].image}'),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Column(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    data[index].title,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(data[index].code),
                                        Text(data[index].qty),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  // const Text('short description'),
                                ],
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          top: -10,
                          left: -10,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 2,
                                horizontal: 4,
                              ),
                              child: Text(
                                '20% off',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
