import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shuvautsavapp/app/storage/database_storage.dart';
import 'package:shuvautsavapp/app/view/app.dart';
import 'package:shuvautsavapp/firebase_options.dart';
import 'package:shuvautsavapp/objectbox.g.dart';

final objectBoxProvider = StateProvider<Store>((ref) {
  throw UnimplementedError();
});
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  final objectbox = await ObjectBox.create();
  ChuckerFlutter.showOnRelease = true;
  runApp(
    ProviderScope(
      overrides: [
        objectBoxProvider.overrideWith(
          (_) => objectbox.store,
        ),
      ],
      child: App(),
    ),
  );
}
