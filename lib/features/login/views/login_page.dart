import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:shuvautsavapp/app/app_route/app_delegate.dart';
import 'package:shuvautsavapp/app/loading/loading_indicator.dart';
import 'package:shuvautsavapp/app/view/app.dart';
import 'package:shuvautsavapp/features/login/controller/login_controller.dart';
import 'package:shuvautsavapp/features/profile/controller/logout_controller.dart';

import '../../dashboard/views/dashboard_page.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final TextEditingController emailController = TextEditingController(text: 'schandboy@gmail.com');
  final TextEditingController passwordController = TextEditingController(text: '12345678');

  @override
  void initState() {
    super.initState();
    LogoutController().logoutSocial();
  }

  bool rememberMe = false;

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    ref.listen(loginProvider, (prev, next) {
      next.maybeWhen(
        orElse: () {},
        error: (data, extra) {
          ref.read(toastProvider.notifier).update((cb) {
            return (
              description: '',
              error: true,
              id: '213123',
              title: 'Error on Login'
            );
          });
        },
        success: (data, extra) {
          ref.replaceAll(
              RoutePage(child: const DashboardPage(), name: 'DashboardPage'));
        },
        loading: (loading, data) {
          if (loading) {
            LoadingIndicator.instance.show(context);
          } else {
            LoadingIndicator.instance.hide();
          }
        },
      );
    });
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/flower_bg.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      'assets/images/god.jpeg',
                      height: 100,
                      width: 100,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    "Let's get started!",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    "Shop Now. Sign in and make your choice for shopping",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  TextFormField(
                    controller: emailController,
                    validator: (value) {
                      if (value == null) {
                        return 'Required';
                      } else if (value.trim().length < 4) {
                        return 'Email field is not valid';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'Email',
                      isDense: true,
                      fillColor: const Color.fromARGB(255, 234, 232, 232),
                      filled: true,
                      prefixIcon: const Icon(HugeIcons.strokeRoundedMail02),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(6)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Password',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  TextFormField(
                    controller: passwordController,
                    validator: (value) {
                      if (value == null) {
                        return 'Required';
                      } else if (value.trim().length < 4) {
                        return 'Password must be a least 5 character';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      fillColor: const Color.fromARGB(255, 234, 232, 232),
                      filled: true,
                      isDense: true,

                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(6)),
                      hintText: 'Password',
                      prefixIcon:
                          const Icon(HugeIcons.strokeRoundedLockPassword),
                      // suffixIcon: Icon(HugeIcons.strokeRoundedEye),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              rememberMe = !rememberMe;
                            });
                          },
                          child: Row(
                            children: [
                              IgnorePointer(
                                ignoring: true,
                                child: SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: Checkbox(
                                    value: rememberMe,
                                    onChanged: (sele) {},
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text('Remember Me')
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ref.read(loginProvider.notifier).login(
                            {
                              'email': emailController.text,
                              'password': passwordController.text,
                            },
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size.fromHeight(50),
                        backgroundColor: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  // const Row(
                  //   children: [
                  //     Expanded(child: Divider(height: 50)),
                  //     Padding(
                  //       padding: EdgeInsets.symmetric(horizontal: 10),
                  //       child: Text('or'),
                  //     ),
                  //     Expanded(child: Divider(height: 50))
                  //   ],
                  // ),
                  // SizedBox(
                  //   width: double.infinity,
                  //   child: OutlinedButton(
                  //     onPressed: () {
                  //       ref.read(loginProvider.notifier).googleSignIn();
                  //     },
                  //     style: OutlinedButton.styleFrom(
                  //       fixedSize: const Size.fromHeight(50),
                  //       shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(10),
                  //       ),
                  //     ),
                  //     child: const Row(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         Icon(HugeIcons.strokeRoundedGoogle),
                  //         SizedBox(
                  //           width: 10,
                  //         ),
                  //         Text(
                  //           'Continue With Google',
                  //           style: TextStyle(
                  //             fontSize: 15,
                  //             fontWeight: FontWeight.w600,
                  //             color: Colors.black,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),

                  // const SizedBox(
                  //   height: 30,
                  // ),
                  // SizedBox(
                  //   width: double.infinity,
                  //   child: OutlinedButton(
                  //     onPressed: () {
                  //       ref.read(loginProvider.notifier).facebookSignIn();
                  //     },
                  //     style: OutlinedButton.styleFrom(
                  //       backgroundColor: const Color.fromARGB(255, 53, 46, 251),
                  //       fixedSize: const Size.fromHeight(50),
                  //       shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(10),
                  //       ),
                  //     ),
                  //     child: const Row(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         Icon(
                  //           HugeIcons.strokeRoundedFacebook01,
                  //           color: Colors.white,
                  //         ),
                  //         SizedBox(
                  //           width: 10,
                  //         ),
                  //         Text(
                  //           'Continue With facebook',
                  //           style: TextStyle(
                  //             fontSize: 15,
                  //             color: Colors.white,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),

                  const SizedBox(
                    height: 30,
                  ),
                  // const Text('Already a customer, Sign Up.'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
