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
    apiKey: 'AIzaSyBsBxv19eFsr7dwwok5XlYlj3VZG1tHsO0',
    appId: '1:64331748457:web:89bfc87f8e6f6614e77ef8',
    messagingSenderId: '64331748457',
    projectId: 'nyasa-web',
    authDomain: 'nyasa-web.firebaseapp.com',
    storageBucket: 'nyasa-web.appspot.com',
    measurementId: 'G-69EFRZKL38',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCKYhdRGGXv5FUbiwMdad6DyhqrvH7i2Tg',
    appId: '1:64331748457:android:2e4b7916671e20d8e77ef8',
    messagingSenderId: '64331748457',
    projectId: 'nyasa-web',
    storageBucket: 'nyasa-web.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC5AptK8_5nPHiQSN0M2E1NqYHNcxp6t6E',
    appId: '1:64331748457:ios:f01d04e285b51506e77ef8',
    messagingSenderId: '64331748457',
    projectId: 'nyasa-web',
    storageBucket: 'nyasa-web.appspot.com',
    iosClientId: '64331748457-ds5r2bp6a50db1io1j3dka6at1fq10d9.apps.googleusercontent.com',
    iosBundleId: 'com.example.nyasaNew',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC5AptK8_5nPHiQSN0M2E1NqYHNcxp6t6E',
    appId: '1:64331748457:ios:7b674f627f9b2dbae77ef8',
    messagingSenderId: '64331748457',
    projectId: 'nyasa-web',
    storageBucket: 'nyasa-web.appspot.com',
    iosClientId: '64331748457-hvjn9nmvoc2217hfsjueteqoh9hvbavf.apps.googleusercontent.com',
    iosBundleId: 'com.example.nyasaNew.RunnerTests',
  );
}
