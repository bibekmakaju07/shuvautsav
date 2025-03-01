import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:shuvautsavapp/app/app_route/app_delegate.dart';
import 'package:shuvautsavapp/app/view/app.dart';
import 'package:shuvautsavapp/features/dashboard/views/dashboard_page.dart';

class CheckoutSuccessPage extends ConsumerStatefulWidget {
  const CheckoutSuccessPage({super.key});

  @override
  _CheckoutSuccessPageState createState() => _CheckoutSuccessPageState();
}

class _CheckoutSuccessPageState extends ConsumerState<CheckoutSuccessPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeInAnimation;

  @override
  void initState() {
    super.initState();

    // Animation Controller for Lottie
    _animationController = AnimationController(vsync: this);

    // Fade-in Animation for Text and Button
    _fadeInAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );

    // Start animations
    Future.delayed(Duration(milliseconds: 500), () {
      _animationController.forward();
    });

    _animationController.addListener(() {
      if (_animationController.value > 0.9) {
        _animationController.stop();
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/lottie/cart_animation.json', // Replace with your Lottie animation file
                controller: _animationController,
                width: 150,
                height: 150,
                repeat: false, // Plays only once
                onLoaded: (composition) {
                  _animationController.duration = composition.duration;
                  _animationController.forward();
                },
              ),

              SizedBox(height: 20),

              // Fade-in Effect for Text & Button
              FadeTransition(
                opacity: _fadeInAnimation,
                child: Column(
                  children: [
                    // Success Message
                    Text(
                      "Order Placed Successfully!",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),

                    SizedBox(height: 10),

                    Text(
                      "Thank you for shopping with us.",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),

                    SizedBox(height: 30),

                    // Go to Home Button
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomSheet: Container(
          width: double.infinity,
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(
            bottom: MediaQuery.of(context).padding.bottom,
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: context.primaryColor,
              padding: EdgeInsets.symmetric(vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {
              ref.replaceAll(
                  RoutePage(child: DashboardPage(), name: 'DashboardPage'));
            },
            child: Text(
              "Go to Home",
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
