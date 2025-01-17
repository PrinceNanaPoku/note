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
    apiKey: 'AIzaSyDFBHR9Y6PrPPMGfho4Lt_Gjpz0dTcbEXc',
    appId: '1:477482945483:web:485e512ca73be18438844e',
    messagingSenderId: '477482945483',
    projectId: 'note-e7c24',
    authDomain: 'note-e7c24.firebaseapp.com',
    storageBucket: 'note-e7c24.firebasestorage.app',
    measurementId: 'G-TRW16J083L',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB8HY8TKpcrtS_0PXdDCXNhhHgfeoukOcs',
    appId: '1:477482945483:android:fcde75ece6952e8438844e',
    messagingSenderId: '477482945483',
    projectId: 'note-e7c24',
    storageBucket: 'note-e7c24.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA7jp3Nb6SoWAQPDVrCoJX3PM5ZMhoZ4SY',
    appId: '1:477482945483:ios:9af5a2c3200d460438844e',
    messagingSenderId: '477482945483',
    projectId: 'note-e7c24',
    storageBucket: 'note-e7c24.firebasestorage.app',
    iosBundleId: 'com.example.note',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA7jp3Nb6SoWAQPDVrCoJX3PM5ZMhoZ4SY',
    appId: '1:477482945483:ios:9af5a2c3200d460438844e',
    messagingSenderId: '477482945483',
    projectId: 'note-e7c24',
    storageBucket: 'note-e7c24.firebasestorage.app',
    iosBundleId: 'com.example.note',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDFBHR9Y6PrPPMGfho4Lt_Gjpz0dTcbEXc',
    appId: '1:477482945483:web:859bd5fdab68087138844e',
    messagingSenderId: '477482945483',
    projectId: 'note-e7c24',
    authDomain: 'note-e7c24.firebaseapp.com',
    storageBucket: 'note-e7c24.firebasestorage.app',
    measurementId: 'G-DEQQ5BZJPB',
  );
}
