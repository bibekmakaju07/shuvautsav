import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shuvautsavapp/app/extensions/context_extentions.dart';

class GenericBottomSheet<T> extends ConsumerStatefulWidget {
  const GenericBottomSheet(
      {super.key, required this.items, required this.title});
  final List<DropdownMenuItem<T>> items;
  final String title;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GenericBottomSheetState<T>();
}

class _GenericBottomSheetState<T> extends ConsumerState<GenericBottomSheet<T>> {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.8,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title,
                  style: context
                      .textTheme()
                      .bodyMedium
                      ?.copyWith(fontWeight: FontWeight.w600),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.close,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView(
                children: widget.items.map((e) {
                  return InkWell(
                    onTap: () {
                      Navigator.pop(context,e.value);
                    },
                    child: e.child,
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
