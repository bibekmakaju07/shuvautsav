import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductDetails extends ConsumerStatefulWidget {
  const ProductDetails({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends ConsumerState<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withOpacity(0.1),
            ),
            height: MediaQuery.sizeOf(context).height * 0.55,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 60, bottom: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://shuvautsav.com/images/subcategory/1640602978_wooden-temple-for-home.jpg',
                    height: MediaQuery.sizeOf(context).height * 0.3,
                  ),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: const Offset(0, -50),
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Modern '),
                            Text('price '),
                          ],
                        ),
                        Divider(),
                        Text('Descirption: '),
                        Text(
                            'Descirption:Descirption DescirptionDescirptionDescirption Descirption'),
                        Divider(),
                        Text('Material: '),
                        Text(
                            'Descirption:Descirption DescirptionDescirptionDescirption Descirption')
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -10,
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 3, horizontal: 8),
                        child: Text(
                          'Category',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
