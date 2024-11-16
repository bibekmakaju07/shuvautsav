import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:shuvautsavapp/app/view/app.dart';
import 'package:shuvautsavapp/features/product/controller/filter_controller.dart';
import 'package:shuvautsavapp/features/product/model/category_product_model.dart';

Color getColorByTitle(String title) {
  switch (title.toLowerCase()) {
    case 'red':
      return Colors.red;
    case 'blue':
      return Colors.blue;
    case 'yellow':
      return Colors.yellow;
    case 'black':
      return Colors.black;
    case 'white':
      return Colors.white;
    case 'green':
      return Colors.green;
    case 'maroon':
      return const Color(0xFF800000); // Maroon
    case 'pink':
      return const Color(0xFFFFC0CB); // Pink
    case 'magenta':
      return const Color(0xFFFF00FF); // Magenta
    case 'orange':
      return Colors.orange;
    case 'turquoise':
      return const Color(0xFF40E0D0); // Turquoise
    case 'grey':
      return Colors.grey;
    case 'golden':
      return const Color(0xFFFFD700); // Golden
    case 'silver':
      return const Color(0xFFC0C0C0); // Silver
    default:
      return Colors.transparent; // Return transparent if no match
  }
}

final productSizedProvider =
    StateProvider.autoDispose<CategoryProductResponse?>((ref) {
  return null;
});

class FilterDrawer extends ConsumerStatefulWidget {
  const FilterDrawer({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FilterDrawerState();
}

class _FilterDrawerState extends ConsumerState<FilterDrawer> {
  final ValueNotifier<String> selectedCategory = ValueNotifier('');
  @override
  Widget build(BuildContext context) {
    ref.listen(
      filterSubCategoryProvider('sizeChildCat'),
      (previous, next) {
        next.maybeWhen(
          orElse: () {
            ref.invalidate(productSizedProvider);
          },
          success: (data, extra) {
            ref.read(productSizedProvider.notifier).state = data;
          },
        );
      },
    );
    ref.listen(
      filterSubCategoryProvider('subcat'),
      (previous, next) {
        next.maybeWhen(
          orElse: () {
            ref.invalidate(productSizedProvider);
          },
          success: (data, extra) {
            ref.read(productSizedProvider.notifier).state = data;
          },
        );
      },
    );
    ref.listen(
      filterSubCategoryProvider('childcat'),
      (previous, next) {
        next.maybeWhen(
          orElse: () {
            ref.invalidate(productSizedProvider);
          },
          success: (data, extra) {
            ref.read(productSizedProvider.notifier).state = data;
          },
        );
      },
    );
    return SafeArea(
      // padding: EdgeInsets.symmetric(vertical: 20),
      child: Drawer(
        backgroundColor: Colors.white,
        width: MediaQuery.sizeOf(context).width * 0.9,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(6),
            bottomLeft: Radius.circular(6),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Filters',
                              style: context.titleLarge,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Icon(
                              HugeIcons.strokeRoundedFilterVertical,
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.red),
                            borderRadius: BorderRadius.circular(
                              15,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 4,
                            ),
                            child: Text(
                              'Clear Filter',
                              style: context.labelMedium.copyWith(
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Price Filter',
                      style: context.labelMedium.copyWith(),
                    ),
                    SliderTheme(
                      data: const SliderThemeData(
                        rangeThumbShape: CircleThumbShape(thumbRadius: 8),
                        trackHeight: 1,
                        inactiveTrackColor: Colors.red,
                      ),
                      child: RangeSlider(
                        min: 1,
                        max: 100,
                        labels: const RangeLabels('10', '90'),
                        values: const RangeValues(10, 90),
                        onChanged: (RangeValues value) {
                          setState(() {});
                        },
                        activeColor: Colors.green,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Category',
                      style: context.labelMedium.copyWith(),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    ref.watch(filterCategoryProvider).maybeWhen(
                      orElse: () {
                        return const SizedBox();
                      },
                      success: (data, extra) {
                        return Wrap(spacing: 10, runSpacing: 3, children: [
                          ...List.generate(
                            data.length > 4 ? 5 : data.length,
                            (index) {
                              return InkWell(
                                onTap: () {
                                  ref
                                      .read(filterSubCategoryProvider('subcat')
                                          .notifier)
                                      .getSubCategory(data[index].slug);
                                  ref.invalidate(
                                      filterSubCategoryProvider('childcat'));
                                  selectedCategory.value = data[index].slug;
                                },
                                child: ValueListenableBuilder(
                                    valueListenable: selectedCategory,
                                    builder: (context, cat, _) {
                                      return Chip(
                                        avatar: CircleAvatar(
                                          backgroundImage:
                                              NetworkImage(data[index].image),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 2, horizontal: 5),
                                        labelPadding:
                                            const EdgeInsets.symmetric(
                                                vertical: 2, horizontal: 5),
                                        backgroundColor: const Color.fromARGB(
                                          255,
                                          255,
                                          236,
                                          236,
                                        ),
                                        color: WidgetStateColor.resolveWith(
                                            (value) {
                                          if (cat == data[index].slug) {
                                            return Colors.red;
                                          }
                                          return const Color.fromARGB(
                                            255,
                                            255,
                                            236,
                                            236,
                                          );
                                        }),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          side: BorderSide(
                                            color: Colors.red,
                                            width: 0.2,
                                          ),
                                        ),
                                        label: Text(
                                          data[index].title,
                                          style: context.labelSmall.copyWith(
                                            color: cat == data[index].slug
                                                ? Colors.white
                                                : Colors.red,
                                          ),
                                        ),
                                      );
                                    }),
                              );
                            },
                          ),
                          if (data.length > 5)
                            InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                    isScrollControlled: true,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                    ),
                                    context: context,
                                    builder: (context) {
                                      return FractionallySizedBox(
                                        heightFactor: 0.8,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                'Filter By Category',
                                                style: context.titleMedium,
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Expanded(
                                                child: ListView.builder(
                                                  itemCount: data.length,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return ListTile(
                                                      dense: true,
                                                      onTap: () {
                                                        Navigator.pop(context,
                                                            data[index].slug);
                                                      },
                                                      contentPadding:
                                                          EdgeInsets.zero,
                                                      leading: CircleAvatar(
                                                        backgroundImage:
                                                            NetworkImage(
                                                                data[index]
                                                                    .image),
                                                      ),
                                                      title: Text(
                                                          data[index].title),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }).then((value) {
                                  if (value is String) {
                                    ref
                                        .read(
                                            filterSubCategoryProvider('subcat')
                                                .notifier)
                                        .getSubCategory(value);
                                    ref.invalidate(
                                        filterSubCategoryProvider('childcat'));

                                    selectedCategory.value = value;
                                  }
                                });
                              },
                              child: Chip(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 2, horizontal: 5),
                                labelPadding: const EdgeInsets.symmetric(
                                    vertical: 2, horizontal: 5),
                                backgroundColor: const Color.fromARGB(
                                  255,
                                  255,
                                  236,
                                  236,
                                ),
                                color: WidgetStateColor.resolveWith((value) {
                                  if (value.contains(WidgetState.selected)) {
                                    return Colors.red;
                                  }
                                  return const Color.fromARGB(
                                    255,
                                    255,
                                    236,
                                    236,
                                  );
                                }),
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  side: BorderSide(
                                    color: Colors.red,
                                    width: 0.2,
                                  ),
                                ),
                                label: Text(
                                  '${data.length - 5} + More',
                                  style: context.labelSmall.copyWith(
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            )
                        ]);
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SubCategoryFilter(
                      familyName: 'subcat',
                      onSelect: (value) {
                        ref
                            .read(
                                filterSubCategoryProvider('childcat').notifier)
                            .getChildCategory(value);
                      },
                    ),
                    //childcat
                    SubCategoryFilter(
                      familyName: 'childcat',
                      onSelect: (value) {
                        ref
                            .read(filterSubCategoryProvider('sizeChildCat')
                                .notifier)
                            .getChildCategory(value,
                                url:
                                    'https://shuvautsav.com/api/v1/childcategory/$value/products?per_page=2');
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Consumer(builder: (context, ref, _) {
                      final sizeState = ref.watch(productSizedProvider);
                      if (sizeState != null) {
                        return CSPFilter(
                          colors: sizeState.data.colors,
                          sizes: sizeState.data.sizes,
                          onTap: (value) {},
                        );
                      }
                      return SizedBox();
                    })
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                      ),
                      onPressed: () {},
                      child: Text(
                        'Filter',
                        style: context.titleSmall.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(
                            color: Theme.of(context).primaryColor,
                            width: 4,
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            HugeIcons.strokeRoundedFilterReset,
                            color: Theme.of(context).primaryColor,
                          ),
                          Text(
                            'Reset',
                            style: context.titleSmall.copyWith(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SubCategoryFilter extends ConsumerStatefulWidget {
  const SubCategoryFilter({
    super.key,
    required this.familyName,
    required this.onSelect,
  });
  final String familyName;
  final ValueSetter<String> onSelect;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SubCategoryFilterState();
}

class _SubCategoryFilterState extends ConsumerState<SubCategoryFilter> {
  String slug = '';
  @override
  Widget build(BuildContext context) {
    ref.listen(filterSubCategoryProvider(widget.familyName), (prev, next) {
      next.maybeWhen(
        orElse: () {},
        success: (data, extra) {
          slug = '';
        },
      );
    });
    return ref.watch(filterSubCategoryProvider(widget.familyName)).maybeWhen(
      orElse: () {
        return const SizedBox();
      },
      success: (data, extra) {
        List<ChildProductCategory> listCategories = [];

        if ('subcat' == widget.familyName) {
          listCategories = data.data.sub_categories;
        } else {
          listCategories = data.data.child_categories;
        }
        if (listCategories.isEmpty) {
          return SizedBox();
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if ('subcat' == widget.familyName)
              Text('Sub-Categories')
            else
              Text('Child-Categories'),
            Wrap(spacing: 10, runSpacing: 3, children: [
              ...List.generate(
                listCategories.length > 4 ? 5 : listCategories.length,
                (index) {
                  final subCategories = listCategories[index];
                  return InkWell(
                    onTap: () {
                      slug = subCategories.slug;
                      setState(() {});
                      widget.onSelect.call(slug);
                    },
                    child: Chip(
                      avatar: CircleAvatar(
                        backgroundImage: NetworkImage(subCategories.image),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 5),
                      labelPadding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 5),
                      backgroundColor: slug == subCategories.slug
                          ? Colors.red
                          : const Color.fromARGB(
                              255,
                              255,
                              236,
                              236,
                            ),
                      color: WidgetStateColor.resolveWith((value) {
                        if (slug == subCategories.slug) {
                          return Colors.red;
                        }
                        return const Color.fromARGB(
                          255,
                          255,
                          236,
                          236,
                        );
                      }),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        side: BorderSide(
                          color: Colors.red,
                          width: 0.2,
                        ),
                      ),
                      label: Text(
                        subCategories.title,
                        style: context.labelSmall.copyWith(
                          color: slug == subCategories.slug
                              ? Colors.white
                              : Colors.red,
                        ),
                      ),
                    ),
                  );
                },
              ),
              if (listCategories.length > 5)
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        context: context,
                        builder: (context) {
                          return FractionallySizedBox(
                            heightFactor: 0.8,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Filter By Sub-Category',
                                    style: context.titleMedium,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Expanded(
                                    child: ListView.builder(
                                      itemCount: listCategories.length,
                                      itemBuilder: (context, index) {
                                        final subCat = listCategories[index];
                                        return ListTile(
                                          dense: true,
                                          onTap: () {
                                            Navigator.pop(context,
                                                listCategories[index].slug);
                                          },
                                          contentPadding: EdgeInsets.zero,
                                          leading: CircleAvatar(
                                            backgroundImage:
                                                NetworkImage(subCat.image),
                                          ),
                                          title: Text(subCat.title),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }).then((value) {
                      slug = value;
                      setState(() {});
                      widget.onSelect.call(slug);
                    });
                  },
                  child: Chip(
                    padding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                    labelPadding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                    backgroundColor: const Color.fromARGB(
                      255,
                      255,
                      236,
                      236,
                    ),
                    color: WidgetStateColor.resolveWith((value) {
                      if (value.contains(WidgetState.selected)) {
                        return Colors.red;
                      }
                      return const Color.fromARGB(
                        255,
                        255,
                        236,
                        236,
                      );
                    }),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      side: BorderSide(
                        color: Colors.red,
                        width: 0.2,
                      ),
                    ),
                    label: Text(
                      '${listCategories.length - 5} + More',
                      style: context.labelSmall.copyWith(
                        color: Colors.red,
                      ),
                    ),
                  ),
                )
            ]),
          ],
        );
      },
    );
  }
}

class CSPFilter extends ConsumerStatefulWidget {
  const CSPFilter({
    super.key,
    required this.colors,
    required this.sizes,
    required this.onTap,
  });

  final List<CategoryColorModel> colors;
  final List<ProductSize> sizes;

  final ValueSetter<Map<String, String?>> onTap;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CSPFilterState();
}

class _CSPFilterState extends ConsumerState<CSPFilter> {
  final List<String> refinedBy = ['Best Selling', 'New', 'InStock'];

  Map<String, String?> selectedMap = {};
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Refined By',
          style: context.labelMedium.copyWith(),
        ),
        const SizedBox(
          height: 5,
        ),
        Wrap(
            spacing: 10,
            runSpacing: 3,
            children: List.generate(refinedBy.length, (index) {
              return InkWell(
                onTap: () {
                  if (selectedMap['refine'] == refinedBy[index]) {
                    selectedMap['refine'] = null;
                  } else {
                    selectedMap['refine'] = refinedBy[index];
                  }
                  setState(() {});
                  widget.onTap(selectedMap);
                },
                child: Chip(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                  labelPadding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                  backgroundColor: const Color.fromARGB(
                    255,
                    255,
                    236,
                    236,
                  ),
                  color: WidgetStateColor.resolveWith((value) {
                    if (selectedMap['refine'] == refinedBy[index]) {
                      return Colors.red;
                    }
                    return const Color.fromARGB(
                      255,
                      255,
                      236,
                      236,
                    );
                  }),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    side: BorderSide(
                      color: Colors.red,
                      width: 0.2,
                    ),
                  ),
                  label: Text(
                    refinedBy[index],
                    style: context.labelSmall.copyWith(
                      color: selectedMap['refine'] == refinedBy[index]
                          ? Colors.white
                          : Colors.red,
                    ),
                  ),
                ),
              );
            })),
        const SizedBox(
          height: 15,
        ),
        Text(
          'Color',
          style: context.labelMedium.copyWith(),
        ),
        const SizedBox(
          height: 5,
        ),
        Wrap(
          spacing: 10,
          runSpacing: 3,
          children: List.generate(
            widget.colors.length,
            (index) {
              return InkWell(
                onTap: () {
                  if (selectedMap['color'] == widget.colors[index].title) {
                    selectedMap['color'] = null;
                  } else {
                    selectedMap['color'] = widget.colors[index].title;
                  }
                  setState(() {});
                  widget.onTap(selectedMap);
                },
                child: Chip(
                  visualDensity: VisualDensity.compact,
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  labelPadding: const EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 5,
                  ),
                  backgroundColor: const Color.fromARGB(
                    255,
                    255,
                    236,
                    236,
                  ),
                  color: WidgetStateColor.resolveWith((value) {
                    if (selectedMap['color'] == widget.colors[index].title) {
                      return Colors.red;
                    }
                    return getColorByTitle(widget.colors[index].title)
                        .withOpacity(0.1);
                  }),
                  shape: RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    side: BorderSide(
                      color: getColorByTitle(widget.colors[index].title),
                      width: 1,
                    ),
                  ),
                  label: Text(
                    widget.colors[index].title.toUpperCase(),
                    style: context.labelSmall.copyWith(
                      color: selectedMap['color'] == widget.colors[index].title
                          ? Colors.white
                          : getColorByTitle(widget.colors[index].title),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          'Size',
          style: context.labelMedium.copyWith(),
        ),
        const SizedBox(
          height: 5,
        ),
        Wrap(
            spacing: 10,
            runSpacing: 3,
            children: List.generate(widget.sizes.length, (index) {
              return InkWell(
                onTap: () {
                  if (selectedMap['size'] == widget.sizes[index].title) {
                    selectedMap['size'] = null;
                  } else {
                    selectedMap['size'] = widget.sizes[index].title;
                  }
                  setState(() {});
                  widget.onTap(selectedMap);
                },
                child: Chip(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                  labelPadding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                  backgroundColor: const Color.fromARGB(
                    255,
                    255,
                    236,
                    236,
                  ),
                  color: WidgetStateColor.resolveWith((value) {
                    if (selectedMap['size'] == widget.sizes[index].title) {
                      return Colors.red;
                    }
                    return const Color.fromARGB(
                      255,
                      255,
                      236,
                      236,
                    );
                  }),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    side: BorderSide(
                      color: Colors.red,
                      width: 0.2,
                    ),
                  ),
                  label: Text(
                    widget.sizes[index].title,
                    style: context.labelSmall.copyWith(
                      color: selectedMap['size'] == widget.sizes[index].title
                          ? Colors.white
                          : Colors.red,
                    ),
                  ),
                ),
              );
            })),
      ],
    );
  }
}

class CircleThumbShape extends RangeSliderThumbShape {
  const CircleThumbShape({this.thumbRadius = 10.0});

  final double thumbRadius;

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required SliderThemeData sliderTheme,
    bool? isDiscrete,
    bool? isEnabled,
    bool? isOnTop,
    TextDirection? textDirection,
    Thumb? thumb,
    bool? isPressed,
  }) {
    final Canvas canvas = context.canvas;

    final Paint fillPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final Paint borderPaint = Paint()
      ..color = Colors.green
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    canvas
      ..drawCircle(center, thumbRadius, fillPaint)
      ..drawCircle(center, thumbRadius, borderPaint);
  }
}
