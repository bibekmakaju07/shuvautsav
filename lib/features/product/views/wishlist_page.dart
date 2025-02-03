import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shuvautsavapp/app/view/app.dart';
import 'package:shuvautsavapp/features/product/model/wishlist_model.dart';
import 'package:shuvautsavapp/network/network_client.dart';

final wishlistProvider =
    FutureProvider.autoDispose<WishListResponse>((ref) async {
  String url = 'https://shuvautsav.com/api/v1/customer/wishlist';

  final response = await NetworkService().get(RequestApi(
    endPath: url,
  ));
  return WishListResponse.fromJson(response.data);
});

class WishListProductList extends ConsumerWidget {
  const WishListProductList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wishListState = ref.watch(wishlistProvider);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'Wishlist',
              style: context.titleMedium.copyWith(
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      ),
      body: wishListState.maybeWhen(
        orElse: () {
          return SizedBox();
        },
        error: (error, stackTrace) {
          return Center(
            child: Text(
              'Failed to fetch wishlist',
              style: context.titleLarge.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
          );
        },
        loading: () {
          return Center(
            child: CircularProgressIndicator(),
          );
        },
        data: (data) {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(16),
            itemCount: data.data.length,
            separatorBuilder: (context, index) => const SizedBox(width: 12),
            itemBuilder: (context, index) {
              final product = data.data[index];
              return Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: SizedBox(
                  width: 300, // Fixed width for each card
                  child: Row(
                    children: [
                      // Product Image
                      ClipRRect(
                        borderRadius: const BorderRadius.horizontal(
                          left: Radius.circular(16),
                        ),
                        child: Image.network(
                          product.image,
                          width: 100,
                          height: double.infinity,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return const Center(
                              child: Icon(
                                Icons.broken_image,
                                size: 50,
                                color: Colors.grey,
                              ),
                            );
                          },
                        ),
                      ),
                      // Product Info
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                product.title,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Rs. ${product.rate}',
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 12),
                              ElevatedButton(
                                onPressed: () {
                                  // Handle click event
                                  print("Clicked on ${product.title}");
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 8,
                                  ),
                                ),
                                child: const Text('View Details'),
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
          );
        },
      ),
    );
  }
}
