// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
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
    apiKey: 'AIzaSyAnFnnzSmjD4rINfXm_TLc_paVkIQ-__VA',
    appId: '1:1041504970227:web:6e2d4746a571dea0225e86',
    messagingSenderId: '1041504970227',
    projectId: 'atman-mobile',
    authDomain: 'atman-mobile.firebaseapp.com',
    storageBucket: 'atman-mobile.appspot.com',
    measurementId: 'G-0Z476BC7MX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAp7QiFWZORFdOUq6QxdMpi2E_CxCWu3Tk',
    appId: '1:1041504970227:android:753df612607b7105225e86',
    messagingSenderId: '1041504970227',
    projectId: 'atman-mobile',
    storageBucket: 'atman-mobile.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCILBaexVa7E_a0wj5y6CDh7QPgerDk5EI',
    appId: '1:1041504970227:ios:31afce7063bc7e4a225e86',
    messagingSenderId: '1041504970227',
    projectId: 'atman-mobile',
    storageBucket: 'atman-mobile.appspot.com',
    iosBundleId: 'com.example.atman',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCILBaexVa7E_a0wj5y6CDh7QPgerDk5EI',
    appId: '1:1041504970227:ios:0c447f16b0807835225e86',
    messagingSenderId: '1041504970227',
    projectId: 'atman-mobile',
    storageBucket: 'atman-mobile.appspot.com',
    iosBundleId: 'com.example.atman.RunnerTests',
  );
}
