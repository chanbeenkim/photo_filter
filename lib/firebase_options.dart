// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDQFkAYnOnQarMD97LucQIXLbvpZ6uGr6k',
    appId: '1:139617085410:web:0dd23f06f2c1818d327bbb',
    messagingSenderId: '139617085410',
    projectId: 'photofilter-app2',
    authDomain: 'photofilter-app2.firebaseapp.com',
    storageBucket: 'photofilter-app2.appspot.com',
    measurementId: 'G-FMLZBMEE6Q',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDVYemMjkHwbfe9ir3NQjPXXzOhP5YDBOc',
    appId: '1:139617085410:android:3d5ffff481094294327bbb',
    messagingSenderId: '139617085410',
    projectId: 'photofilter-app2',
    storageBucket: 'photofilter-app2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCWIddPE_fvTw3gpBZU7OfjW0-x6bAucJI',
    appId: '1:139617085410:ios:be4f27577e07736a327bbb',
    messagingSenderId: '139617085410',
    projectId: 'photofilter-app2',
    storageBucket: 'photofilter-app2.appspot.com',
    iosBundleId: 'com.example.photoFilter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCWIddPE_fvTw3gpBZU7OfjW0-x6bAucJI',
    appId: '1:139617085410:ios:e28278d4db6711d6327bbb',
    messagingSenderId: '139617085410',
    projectId: 'photofilter-app2',
    storageBucket: 'photofilter-app2.appspot.com',
    iosBundleId: 'com.example.photoFilter.RunnerTests',
  );
}