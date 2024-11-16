import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shuvautsavapp/app/app_route/app_delegate.dart';
import 'package:shuvautsavapp/features/dashboard/views/dashboard_page.dart';
import 'package:shuvautsavapp/features/login/views/login_page.dart';

class LoginRegisterOptionsPage extends ConsumerStatefulWidget {
  const LoginRegisterOptionsPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _LoginRegisterOptionsPageState();
}

class _LoginRegisterOptionsPageState
    extends ConsumerState<LoginRegisterOptionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              'assets/images/diyo2.jpg',
            ),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.black.withOpacity(0.8),
                Colors.black38,
                Colors.transparent,
                Colors.transparent,
              ],
            ),
          ),
          child: Column(
            children: [
              const Spacer(),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 100),
                        child: Text(
                          'Finding all your Puja material needs at one Place. ',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                color: Colors.white,
                                width: 4,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            fixedSize: const Size.fromHeight(
                              45,
                            ),
                          ),
                          onPressed: () {
                            ref.push(RoutePage(
                                child: const LoginPage(), name: 'LoginPage'));
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xffD47222),
                              fixedSize: const Size.fromHeight(45)),
                          onPressed: () {
                            ref.push(RoutePage(
                                child: const DashboardPage(),
                                name: 'DashboardPage',),);
                          },
                          child: const Text(
                            'Continue  as guest',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
