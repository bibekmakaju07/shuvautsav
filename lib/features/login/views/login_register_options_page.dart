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
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              'assets/images/diyo2.jpg',
            ),
          ),
        ),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.black87,
                Colors.black12,
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
                      const Text(
                        'Finding all your Puja material needs at one Place. ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Theme.of(context).colorScheme.secondary,
                              fixedSize: const Size.fromHeight(45)),
                          onPressed: () {
                            ref.push(RoutePage(
                                child: const DashboardPage(),
                                name: 'DashboardPage'));
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
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size.fromHeight(
                              45,
                            ),
                          ),
                          onPressed: () {
                            ref.push(RoutePage(
                                child: const LoginPage(), name: 'LoginPage'));
                          },
                          child: const Text(
                            'LOGIN',
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
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Theme.of(context).primaryColor,
                              fixedSize: const Size.fromHeight(45)),
                          onPressed: () {
                            ref.push(RoutePage(
                                child: const LoginPage(), name: 'LoginPage'));
                          },
                          child: const Text(
                            'SIGN UP',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
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
