import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:shuvautsavapp/app/app_route/app_delegate.dart';
import 'package:shuvautsavapp/app/storage/product_model.dart';
import 'package:shuvautsavapp/app/view/app.dart';
import 'package:shuvautsavapp/features/cart/views/cart.dart';
import 'package:shuvautsavapp/features/product/views/wishlist_page.dart';
import 'package:shuvautsavapp/main.dart';

class CustomAppbar extends ConsumerStatefulWidget {
  const CustomAppbar({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends ConsumerState<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    return Row(
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
      ],
    );
  }
}

class CartIconButton extends StatelessWidget {
  const CartIconButton({
    super.key,
    required this.ref,
  });

  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
              border: Border.all(color: const Color(0xffEAF0F4), width: 1),
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
                      backgroundColor: Theme.of(context).primaryColor,
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
    );
  }
}

class WishListButton extends StatelessWidget {
  const WishListButton({
    super.key,
    required this.ref,
  });

  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ref.push(RoutePage(
            child: WishListProductList(), name: 'WishListProductList'));
      },
      child: Container(
        width: 42,
        height: 42,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffEAF0F4), width: 1),
          borderRadius: const BorderRadius.all(
            Radius.circular(3),
          ),
        ),
        child: const Icon(
          HugeIcons.strokeRoundedFavourite,
        ),
      ),
    );
  }
}
