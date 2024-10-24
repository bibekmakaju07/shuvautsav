import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:shuvautsavapp/features/category/views/category.dart';
import 'package:shuvautsavapp/features/dashboard/views/home_page.dart';
import 'package:shuvautsavapp/features/product/views/product_details.dart';
import 'package:shuvautsavapp/features/product/views/product_list.dart';

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
    const ProductList(),
    const ProductDetails(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: widgetList[selectedPage],
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
                        title: 'Home',
                        selectedIndex: selectedPage,
                        onSelect: (value) {
                          setState(() {
                            selectedPage = value;
                          });
                        },
                      ),
                      BottomNavItem(
                        title: 'Category',
                        index: 1,
                        selectedIndex: selectedPage,
                        onSelect: (value) {
                          setState(() {
                            selectedPage = value;
                          });
                        },
                      ),
                      SizedBox(
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
                      BottomNavItem(
                        index: 3,
                        title: 'Product',
                        selectedIndex: selectedPage,
                        onSelect: (value) {
                          setState(() {
                            selectedPage = value;
                          });
                        },
                      ),
                      BottomNavItem(
                        title: 'Profile',
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
            Positioned(
              top: -40,
              height: 80,
              width: 80,
              child: CustomPaint(
                painter: MulticolorBorderCirclePainter(),
                child: const Center(
                  child: Icon(
                    HugeIcons.strokeRoundedShoppingCartAdd01,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavItem extends StatefulWidget {
  const BottomNavItem({
    super.key,
    required this.index,
    required this.selectedIndex,
    required this.title,
    required this.onSelect,
  });
  final int index;
  final int selectedIndex;
  final ValueSetter<int> onSelect;
  final String title;

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
          const Icon(
            HugeIcons.strokeRoundedHome01,
            color: Colors.white,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            widget.title,
            style: TextStyle(
              color: Colors.white,
              fontSize: widget.index == widget.selectedIndex ? 16 : 14,
              fontWeight: widget.index == widget.selectedIndex
                  ? FontWeight.w700
                  : FontWeight.w500,
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
    const double strokeWidth = 5; // Border thickness

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
    path.lineTo(size.width * 0.25, 0);

    // Create the left side of the dip
    path.cubicTo(
      size.width * 0.35, 0, // First control point
      size.width * 0.4, 42, // Second control point
      size.width * 0.5, 42, // End point of the left curve
    );

    // Create the right side of the dip
    path.cubicTo(
        size.width * 0.6,
        42, // Third control point
        size.width * 0.65,
        0, // Fourth control point
        size.width * 0.75,
        0 // End point of the right curve
        );

    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(
      path,
      Paint()
        ..color = const Color(0xffED1C24)
        ..strokeWidth = 10,
    );
  }

  @override
  bool shouldRepaint(CustomBottomPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(CustomBottomPainter oldDelegate) => false;
}
