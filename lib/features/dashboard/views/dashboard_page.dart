import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:shuvautsavapp/app/app_route/app_delegate.dart';
import 'package:shuvautsavapp/app/storage/product_model.dart';
import 'package:shuvautsavapp/app/view/app.dart';
import 'package:shuvautsavapp/features/cart/views/cart.dart';
import 'package:shuvautsavapp/features/category/views/category.dart';
import 'package:shuvautsavapp/features/dashboard/views/home_page.dart';
import 'package:shuvautsavapp/features/orders/views/order_status_tab_page.dart';
import 'package:shuvautsavapp/features/profile/view/profile_view.dart';
import 'package:shuvautsavapp/main.dart';

class DashboardPage extends StatefulHookConsumerWidget {
  const DashboardPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DashboardPageState();
}

class _DashboardPageState extends ConsumerState<DashboardPage> {
  int selectedPage = 0;

  List<Widget> widgetList = [
    const HomePage(),
    const CategoryPage(),
    const SizedBox(),
    const OrderStatusTabPage(),
    const ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: widgetList[selectedPage],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        elevation: 0,
        onPressed: () {
          ref.push(RoutePage(child: CartPage(), name: 'CartPage'));
        },
        child: Stack(
          children: [
            CustomPaint(
              painter: MulticolorBorderCirclePainter(),
              child: const Center(
                child: Icon(
                  HugeIcons.strokeRoundedShoppingCartCheck01,
                ),
              ),
            ),
            Positioned(
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
                          style:
                              context.labelSmall.copyWith(color: Colors.white),
                        ),
                      );
                    }
                    return SizedBox();
                  }),
            )
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            CustomPaint(
              painter: CustomBottomPainter(),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BottomNavItem(
                        index: 0,
                        iconData: HugeIcons.strokeRoundedHome01,
                        title: 'Home',
                        selectedIndex: selectedPage,
                        onSelect: (value) {
                          setState(() {
                            selectedPage = value;
                          });
                        },
                      ),
                      BottomNavItem(
                        iconData: HugeIcons.strokeRoundedMenuCircle,
                        title: 'Category',
                        index: 1,
                        selectedIndex: selectedPage,
                        onSelect: (value) {
                          setState(() {
                            selectedPage = value;
                          });
                        },
                      ),
                      InkWell(
                        onTap: () {
                          ref.push(
                            RoutePage(
                                child: const CartPage(), name: 'CardPage'),
                          );
                        },
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width * .2,
                          child: const Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: EdgeInsets.only(
                                bottom: 4,
                              ),
                              child: Text(
                                'Cart',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      BottomNavItem(
                        index: 3,
                        iconData: HugeIcons.strokeRoundedShoppingBag01,
                        title: 'Orders',
                        selectedIndex: selectedPage,
                        onSelect: (value) {
                          setState(() {
                            selectedPage = value;
                          });
                        },
                      ),
                      BottomNavItem(
                        title: 'Profile',
                        iconData: HugeIcons.strokeRoundedProfile02,
                        index: 4,
                        selectedIndex: selectedPage,
                        onSelect: (value) {
                          setState(() {
                            selectedPage = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Positioned(
            //   top: -20,
            //   height: 60,
            //   width: 60,
            //   child: InkWell(
            //     onTap: () {
            //       ref.push(
            //         RoutePage(child: const CardPage(), name: 'CardPage'),
            //       );
            //     },
            //     child: CustomPaint(
            //       painter: MulticolorBorderCirclePainter(),
            //       child: const Center(
            //         child: Icon(
            //           HugeIcons.strokeRoundedShoppingCartAdd01,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class BottomNavItem extends StatefulWidget {
  const BottomNavItem(
      {super.key,
      required this.index,
      required this.selectedIndex,
      required this.title,
      required this.onSelect,
      required this.iconData});
  final int index;
  final int selectedIndex;
  final ValueSetter<int> onSelect;
  final String title;
  final IconData iconData;

  @override
  State<BottomNavItem> createState() => _BottomNavItemState();
}

class _BottomNavItemState extends State<BottomNavItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.onSelect(widget.index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            widget.iconData,
            weight: 10,
            color: widget.index == widget.selectedIndex
                ? Colors.red
                : const Color.fromARGB(255, 74, 74, 74),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            widget.title,
            style: TextStyle(
              color: widget.index == widget.selectedIndex
                  ? Colors.red
                  : const Color.fromARGB(255, 74, 74, 74),
              fontSize: widget.index == widget.selectedIndex ? 16 : 14,
              fontWeight: widget.index == widget.selectedIndex
                  ? FontWeight.w600
                  : FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}

class MulticolorBorderCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double radius = size.width / 2;
    const double strokeWidth = 1; // Border thickness

    // Paint for the circle's fill color
    final fillPaint = Paint()
      ..color = Colors.transparent
      ..style = PaintingStyle.fill;

    // Gradient shader for the border
    const gradient = SweepGradient(
      colors: [Colors.red, Colors.green, Colors.blue, Colors.red],
      startAngle: 0.0,
      endAngle: 3.14 * 2,
    );

    // Paint for the multicolored border
    final borderPaint = Paint()
      ..shader = gradient.createShader(
          Rect.fromCircle(center: Offset(radius, radius), radius: radius))
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    // Draw the filled circle
    canvas.drawCircle(
        Offset(radius, radius), radius - strokeWidth / 2, fillPaint);

    // Draw the multicolored border
    canvas.drawCircle(
        Offset(radius, radius), radius - strokeWidth / 2, borderPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class CustomBottomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width * 0.30, 0);

    // Create the left side of the dip
    path.cubicTo(
      size.width * 0.4, 0, // First control point
      size.width * 0.45, 42, // Second control point
      size.width * 0.5, 42, // End point of the left curve
    );

    // Create the right side of the dip
    path.cubicTo(
        size.width * 0.55,
        42, // Third control point
        size.width * 0.6,
        0, // Fourth control point
        size.width * 0.7,
        0 // End point of the right curve
        );

    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(
      path,
      Paint()
        ..color = const Color.fromARGB(255, 246, 245, 245)
        ..strokeWidth = 10,
    );
  }

  @override
  bool shouldRepaint(CustomBottomPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(CustomBottomPainter oldDelegate) => false;
}
