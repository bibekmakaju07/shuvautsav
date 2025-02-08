// File: lib/firebase_options.dart

import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

 

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA5Ll5ZZS25nYw5AzXV4dnNas3T8Vdcr_A',
    appId: '1:365824589269:android:a0ae75a894bf2678d3d15c',
    messagingSenderId: '365824589269',
    projectId: 'shuvautsav-51f6c',
    storageBucket: 'shuvautsav-51f6c.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC3ybBQr-g4fBuUOpygvSypgP7O_iAtQy4',
    appId: '1:365824589269:ios:dbfc659eeafbfdf5d3d15c',
    messagingSenderId: '365824589269',
    projectId: 'shuvautsav-51f6c',
    storageBucket: 'shuvautsav-51f6c.firebasestorage.app',
    iosBundleId: 'com.shuvautsav.app',
  );

  
}
