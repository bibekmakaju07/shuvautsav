import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hugeicons/hugeicons.dart';

class CategoryPage extends ConsumerStatefulWidget {
  const CategoryPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CategoryPageState();
}

class _CategoryPageState extends ConsumerState<CategoryPage> {
  @override
  Widget build(BuildContext context) {
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
                  Container(
                    width: 42,
                    height: 42,
                    decoration: const BoxDecoration(
                      // border: Border.all(
                      //   color: Theme.of(context).primaryColor,
                      //   width: 0.3,
                      // ),
                      borderRadius: BorderRadius.all(
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
                        color: Theme.of(context).primaryColor,
                        width: 0.3,
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
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(10, (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: ClipRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 5,
                              sigmaY: 5,
                            ),
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.15),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              width: double.infinity,
                              child: Row(
                                children: [
                                  const Expanded(
                                    flex: 2,
                                    child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                          vertical: 10,
                                          horizontal: 16,
                                        ),
                                        child: Text(
                                          'Categories',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Image.asset(
                                      'assets/images/butterfly.png',
                                      fit: BoxFit.fitWidth,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
