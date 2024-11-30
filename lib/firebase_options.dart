// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyAuAF5zseK_aPHREiJdUMU04GlLF3gRG-I',
    appId: '1:1012830845356:web:d4fd11198ee4b18d7ca209',
    messagingSenderId: '1012830845356',
    projectId: 'login-page-24c2c',
    authDomain: 'login-page-24c2c.firebaseapp.com',
    storageBucket: 'login-page-24c2c.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDEMaPK4_kM9v_3fdqvBK0IlyPDS4jsPD8',
    appId: '1:1012830845356:android:df3d0724ed073e157ca209',
    messagingSenderId: '1012830845356',
    projectId: 'login-page-24c2c',
    storageBucket: 'login-page-24c2c.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDG5mxiFIaVhCP8SknbCA01Ci80ni-Cn4Q',
    appId: '1:1012830845356:ios:22599681989b62ae7ca209',
    messagingSenderId: '1012830845356',
    projectId: 'login-page-24c2c',
    storageBucket: 'login-page-24c2c.firebasestorage.app',
    iosBundleId: 'com.example.property',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDG5mxiFIaVhCP8SknbCA01Ci80ni-Cn4Q',
    appId: '1:1012830845356:ios:22599681989b62ae7ca209',
    messagingSenderId: '1012830845356',
    projectId: 'login-page-24c2c',
    storageBucket: 'login-page-24c2c.firebasestorage.app',
    iosBundleId: 'com.example.property',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAuAF5zseK_aPHREiJdUMU04GlLF3gRG-I',
    appId: '1:1012830845356:web:09f5cbbc84e3ed647ca209',
    messagingSenderId: '1012830845356',
    projectId: 'login-page-24c2c',
    authDomain: 'login-page-24c2c.firebaseapp.com',
    storageBucket: 'login-page-24c2c.firebasestorage.app',
  );
}
