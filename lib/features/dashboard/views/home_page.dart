import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hugeicons/hugeicons.dart';

class HomePage extends StatefulHookConsumerWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}
class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          children: [
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
                    border:
                        Border.all(color: const Color(0xffEAF0F4), width: 1),
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
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  HugeIcons.strokeRoundedLocation07,
                ),
                suffixIcon: Icon(
                  HugeIcons.strokeRoundedArrowRight01,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffEAF0F4),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(3),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Text(
                  'Browser Categories',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '15+',
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                Spacer(),
                Text(
                  'See All',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(15, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: SizedBox(
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor:
                                const Color(0xffED1C24).withOpacity(0.3),
                            radius: 41,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.network(
                                'https://shuvautsav.com/images/category/1637223530_3.png',
                                height: 80,
                                width: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Text('Mobiles'),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Row(
              children: [
                Text(
                  'Browser Categories',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '15+',
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                Spacer(),
                Text(
                  'See All',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(10, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.network(
                              'https://shuvautsav.com/images/product/16413799653a.jpg',
                            ),
                          ),
                          const Text('Name'),
                          const Text('description'),
                          const SizedBox(),
                          const Text('Price'),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      );
  }
}