import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shuvautsavapp/app/storage/database_storage.dart';
import 'package:shuvautsavapp/app/view/app.dart';
import 'package:shuvautsavapp/objectbox.g.dart';

final objectBoxProvider = StateProvider<Store>((ref) {
  throw UnimplementedError();
});
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final objectbox = await ObjectBox.create();
  runApp(
    ProviderScope(
      overrides: [
        objectBoxProvider.overrideWith(
          (_) => objectbox.store,
        ),
      ],
      child: App(
      ),
    ),
  );
}
