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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAcpN0fZT7SPJifFe7qlh1wUgFCgbdgaco',
    appId: '1:460049408845:web:d1632c8111e08886ca8d04',
    messagingSenderId: '460049408845',
    projectId: 'sheegr-95764',
    authDomain: 'sheegr-95764.firebaseapp.com',
    storageBucket: 'sheegr-95764.appspot.com',
    measurementId: 'G-X3VVP9RH7S',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAF6PtGsU5Eci2vpQVP97tJ-L0_ZvIwnA4',
    appId: '1:460049408845:android:26aa7ebb29390f5eca8d04',
    messagingSenderId: '460049408845',
    projectId: 'sheegr-95764',
    storageBucket: 'sheegr-95764.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAAQSvcnuX0nuylLm0QpmaJYiHt5m-G2RI',
    appId: '1:460049408845:ios:8b6730fc87e4597cca8d04',
    messagingSenderId: '460049408845',
    projectId: 'sheegr-95764',
    storageBucket: 'sheegr-95764.appspot.com',
    androidClientId: '460049408845-g397l3nb6j51hit8au1ppmiu6njo17lk.apps.googleusercontent.com',
    iosClientId: '460049408845-4d16dd85vpibjmhhs3mqnuqdn8dm76h1.apps.googleusercontent.com',
    iosBundleId: 'com.example.sheegr',
  );
}
