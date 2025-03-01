import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:shuvautsavapp/app/view/app.dart';
import 'package:shuvautsavapp/features/category/model/category_model.dart';
import 'package:shuvautsavapp/features/product/controller/search_controller.dart';
import 'package:shuvautsavapp/features/product/model/product_filter_data_model.dart';
import 'package:shuvautsavapp/features/product/model/search_filter_data_model.dart';
import 'package:shuvautsavapp/network/network_client.dart';

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

final filterDataProvider = StateProvider.autoDispose<FilteredDataModel?>((ref) {
  return null;
});

final searchDataProvider =
    FutureProvider.autoDispose<SearchDataResponse>((ref) async {
  final data = await NetworkService().get(
    RequestApi(
      endPath: 'https://shuvautsav.com/api/v1/search',
    ),
  );
  return SearchDataResponse.fromJson(data.data);
});

class FilterDrawer extends ConsumerStatefulWidget {
  const FilterDrawer({
    required this.filteredDataModel,
    required this.onSelect,
    super.key,
  });

  final FilteredDataModel filteredDataModel;
  final ValueSetter<FilteredDataModel> onSelect;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FilterDrawerState();
}

class _FilterDrawerState extends ConsumerState<FilterDrawer> {
  final ValueNotifier<int?> selectedCategory = ValueNotifier(null);

  late FilteredDataModel filteredDataModel;

  final TextEditingController _minController = TextEditingController();
  final TextEditingController _maxController = TextEditingController();

  @override
  void initState() {
    filteredDataModel = widget.filteredDataModel;
    selectedCategory.value = filteredDataModel.category_id;
    _maxController.text = filteredDataModel.max ?? '';
    _minController.text = filteredDataModel.min ?? '';

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                            border: Border.all(
                              width: 1,
                              color: Colors.red,
                            ),
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
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Min. Price',
                                style: context.labelSmall,
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              TextFormField(
                                controller: _minController,
                                onChanged: (value) {
                                  filteredDataModel =
                                      filteredDataModel.copyWith(min: value.trim().isEmpty?null:value);
                                },
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  isDense: true,
                                  hintText: 'Min Price',
                                  hintStyle: context.labelSmall
                                      .copyWith(color: Colors.grey.shade300),
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 10,
                                  ),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Max. Price',
                                style: context.labelSmall,
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              TextFormField(
                                controller: _maxController,
                                onChanged: (value) {
                                  filteredDataModel =
                                      filteredDataModel.copyWith(max: value.trim().isEmpty?null:value);
                                },
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  isDense: true,
                                  hintText: 'Max. Price',
                                  hintStyle: context.labelSmall
                                      .copyWith(color: Colors.grey.shade300),
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 10,
                                  ),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
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
                    ref.watch(searchDataProvider).maybeWhen(
                      orElse: () {
                        return const SizedBox();
                      },
                      error: (error, stackTrace) {
                        return Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: CircularProgressIndicator(),
                          ),
                        );
                      },
                      data: (d) {
                        final data = d.data;
                        return Wrap(spacing: 10, runSpacing: 3, children: [
                          ...List.generate(
                            data.categories.length > 4
                                ? 5
                                : data.categories.length,
                            (index) {
                              return InkWell(
                                onTap: () {
                                  selectedCategory.value =
                                      data.categories[index].id;
                                  ref
                                      .read(subfilterCategoryProvider.notifier)
                                      .getSubCategory(
                                          data.categories[index].slug);
                                  ref.invalidate(childfilterCategoryProvider);

                                  filteredDataModel =
                                      filteredDataModel.copyWith(
                                          category_id:
                                              data.categories[index].id);
                                },
                                child: ValueListenableBuilder(
                                    valueListenable: selectedCategory,
                                    builder: (context, cat, _) {
                                      return Chip(
                                        avatar: CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              data.categories[index].image),
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
                                          if (cat ==
                                              data.categories[index].id) {
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
                                          data.categories[index].title,
                                          style: context.labelSmall.copyWith(
                                            color:
                                                cat == data.categories[index].id
                                                    ? Colors.white
                                                    : Colors.red,
                                          ),
                                        ),
                                      );
                                    }),
                              );
                            },
                          ),
                          if (data.categories.length > 5)
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
                                                  itemCount:
                                                      data.categories.length,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return ListTile(
                                                      dense: true,
                                                      onTap: () {
                                                        Navigator.pop(
                                                            context,
                                                            data.categories[
                                                                index]);
                                                      },
                                                      contentPadding:
                                                          EdgeInsets.zero,
                                                      leading: CircleAvatar(
                                                        backgroundImage:
                                                            NetworkImage(data
                                                                .categories[
                                                                    index]
                                                                .image),
                                                      ),
                                                      title: Text(data
                                                          .categories[index]
                                                          .title),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }).then((value) {
                                  if (value is ProductCategory) {
                                    selectedCategory.value = value.id;
                                    ref
                                        .read(
                                            subfilterCategoryProvider.notifier)
                                        .getSubCategory(value.slug);
                                    ref.invalidate(childfilterCategoryProvider);
                                    filteredDataModel =
                                        filteredDataModel.copyWith(
                                      category_id: value.id,
                                      sub_category_id: null,
                                      child_category_id: null,
                                    );
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
                                  '${data.categories.length - 5} + More',
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
                    Consumer(builder: (context, ref, _) {
                      final subCat = ref.watch(subfilterCategoryProvider);

                      return subCat.maybeWhen(
                        orElse: () => SizedBox(),
                        loading: (loading, data) => SizedBox(),
                        success: (data, _) {
                          if (data.data.sub_categories.isEmpty) {
                            return SizedBox();
                          }
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sub categories',
                                style: context.labelSmall,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SubCategoryFilter(
                                id: filteredDataModel.sub_category_id,
                                categoryList: data.data.sub_categories,
                                onSelect: (value) {
                                  ref
                                      .read(
                                          childfilterCategoryProvider.notifier)
                                      .getChildCategory(value.slug);
                                  filteredDataModel =
                                      filteredDataModel.copyWith(
                                    sub_category_id: value.id,
                                    child_category_id: null,
                                  );
                                },
                              ),
                            ],
                          );
                        },
                      );
                    }),
                    //childcat
                    Consumer(builder: (context, ref, _) {
                      final childCat = ref.watch(childfilterCategoryProvider);

                      return childCat.maybeWhen(
                        orElse: () => SizedBox(),
                        loading: (loading, data) => SizedBox(),
                        success: (data, _) {
                          if (data.data.child_categories.isEmpty) {
                            return SizedBox();
                          }
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Child categories',
                                style: context.labelSmall,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SubCategoryFilter(
                                id: filteredDataModel.child_category_id,
                                categoryList: data.data.child_categories,
                                onSelect: (value) {
                                  filteredDataModel = filteredDataModel
                                      .copyWith(child_category_id: value.id);
                                },
                              ),
                            ],
                          );
                        },
                      );
                    }),
                    SizedBox(
                      height: 15,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Consumer(builder: (context, ref, _) {
                      final sizeState = ref.watch(searchDataProvider);
                      return sizeState.maybeWhen(
                        orElse: () {
                          return SizedBox();
                        },
                        data: (data) {
                          return CSPFilter(
                            colors: data.data.colors,
                            sizes: data.data.sizes,
                            onTap: (({
                                  ColorOption? color,
                                  SizeOption? size
                                }) value) {
                              filteredDataModel = filteredDataModel.copyWith(
                                color_id: value.color?.id,
                                size_id: value.size?.id,
                              );
                            },
                          );
                        },
                      );
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
                      onPressed: () {
                        Navigator.pop(context);
                        widget.onSelect.call(filteredDataModel);
                      },
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
                      onPressed: () {
                        final keyword = filteredDataModel.keyword;

                        filteredDataModel = FilteredDataModel(
                          keyword: keyword,
                        );
                        selectedCategory.value = filteredDataModel.category_id;
                        _minController.text = '';
                        _maxController.text = '';

                        setState(() {});
                      },
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
    required this.onSelect,
    required this.id,
    required this.categoryList,
  });
  final ValueSetter<ProductCategory> onSelect;
  final List<ProductCategory> categoryList;
  final int? id;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SubCategoryFilterState();
}

class _SubCategoryFilterState extends ConsumerState<SubCategoryFilter> {
  ProductCategory? selectedCat;

  @override
  void initState() {
    selectedCat =
        widget.categoryList.firstWhereOrNull((e) => e.id == widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(spacing: 10, runSpacing: 3, children: [
      ...List.generate(
        widget.categoryList.length > 4 ? 5 : widget.categoryList.length,
        (index) {
          final subCategories = widget.categoryList[index];
          return InkWell(
            onTap: () {
              selectedCat = subCategories;
              setState(() {});
              widget.onSelect.call(subCategories);
            },
            child: Chip(
              avatar: CircleAvatar(
                backgroundImage: NetworkImage(subCategories.image),
              ),
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
              labelPadding:
                  const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
              backgroundColor: selectedCat?.slug == subCategories.slug
                  ? Colors.red
                  : const Color.fromARGB(
                      255,
                      255,
                      236,
                      236,
                    ),
              color: WidgetStateColor.resolveWith((value) {
                if (selectedCat?.slug == subCategories.slug) {
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
                  color: selectedCat?.slug == subCategories.slug
                      ? Colors.white
                      : Colors.red,
                ),
              ),
            ),
          );
        },
      ),
      if (widget.categoryList.length > 5)
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
                              itemCount: widget.categoryList.length,
                              itemBuilder: (context, index) {
                                final subCat = widget.categoryList[index];
                                return ListTile(
                                  dense: true,
                                  onTap: () {
                                    Navigator.pop(
                                        context, widget.categoryList[index]);
                                  },
                                  contentPadding: EdgeInsets.zero,
                                  leading: CircleAvatar(
                                    backgroundImage: NetworkImage(subCat.image),
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
              if (value is ProductCategory) {
                selectedCat = value;
                setState(() {});
                widget.onSelect.call(value);
              }
            });
          },
          child: Chip(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
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
              '${widget.categoryList.length - 5} + More',
              style: context.labelSmall.copyWith(
                color: Colors.red,
              ),
            ),
          ),
        )
    ]);
  }
}

class CSPFilter extends ConsumerStatefulWidget {
  const CSPFilter({
    super.key,
    required this.colors,
    required this.sizes,
    required this.onTap,
  });

  final List<ColorOption> colors;
  final List<SizeOption> sizes;

  final ValueSetter<({ColorOption? color, SizeOption? size})> onTap;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CSPFilterState();
}

class _CSPFilterState extends ConsumerState<CSPFilter> {
  // final List<String> refinedBy = ['Best Selling', 'New', 'InStock'];

  ColorOption? selectedColor;
  SizeOption? selectedSize;

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
        // const SizedBox(
        //   height: 5,
        // ),
        // Wrap(
        //     spacing: 10,
        //     runSpacing: 3,
        //     children: List.generate(refinedBy.length, (index) {
        //       return InkWell(
        //         onTap: () {
        //           if (selectedMap['refine'] == refinedBy[index]) {
        //             selectedMap['refine'] = null;
        //           } else {
        //             selectedMap['refine'] = refinedBy[index];
        //           }
        //           setState(() {});
        //           widget.onTap(selectedMap);
        //         },
        //         child: Chip(
        //           padding:
        //               const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
        //           labelPadding:
        //               const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
        //           backgroundColor: const Color.fromARGB(
        //             255,
        //             255,
        //             236,
        //             236,
        //           ),
        //           color: WidgetStateColor.resolveWith((value) {
        //             if (selectedMap['refine'] == refinedBy[index]) {
        //               return Colors.red;
        //             }
        //             return const Color.fromARGB(
        //               255,
        //               255,
        //               236,
        //               236,
        //             );
        //           }),
        //           shape: const RoundedRectangleBorder(
        //             borderRadius: BorderRadius.all(Radius.circular(15)),
        //             side: BorderSide(
        //               color: Colors.red,
        //               width: 0.2,
        //             ),
        //           ),
        //           label: Text(
        //             refinedBy[index],
        //             style: context.labelSmall.copyWith(
        //               color: selectedMap['refine'] == refinedBy[index]
        //                   ? Colors.white
        //                   : Colors.red,
        //             ),
        //           ),
        //         ),
        //       );
        //     })),
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
                  selectedColor = widget.colors[index];
                  setState(() {});
                  widget.onTap((color: selectedColor, size: selectedSize));
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
                    if (selectedColor?.id == widget.colors[index].id) {
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
                      color: selectedColor?.id == widget.colors[index].id
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
                  selectedSize = widget.sizes[index];
                  setState(() {});
                  widget.onTap((color: selectedColor, size: selectedSize));
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
                    if (selectedSize?.id == widget.sizes[index].id) {
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
                      color: selectedSize?.id == widget.sizes[index].id
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
