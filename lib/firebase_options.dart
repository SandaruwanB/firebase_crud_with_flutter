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
    apiKey: 'AIzaSyBhX7KO6itA26eHPBEa2YiYJ7SpL51wJHk',
    appId: '1:341728391519:web:5bcfd79c57fa4bb26b46ea',
    messagingSenderId: '341728391519',
    projectId: 'pet-buddy-4762c',
    authDomain: 'pet-buddy-4762c.firebaseapp.com',
    storageBucket: 'pet-buddy-4762c.appspot.com',
    measurementId: 'G-HWKX1BTKQ7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB3PPuDkrJhkQUcq7ZWzFed9vfN1UQdO1Q',
    appId: '1:341728391519:android:683c25b609a4f3f26b46ea',
    messagingSenderId: '341728391519',
    projectId: 'pet-buddy-4762c',
    storageBucket: 'pet-buddy-4762c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBTmLx6YxTDm9sjkknu7jyDx1DBtGPTxCQ',
    appId: '1:341728391519:ios:bf92f2084b8a78e56b46ea',
    messagingSenderId: '341728391519',
    projectId: 'pet-buddy-4762c',
    storageBucket: 'pet-buddy-4762c.appspot.com',
    iosBundleId: 'com.example.firebaseTest',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBTmLx6YxTDm9sjkknu7jyDx1DBtGPTxCQ',
    appId: '1:341728391519:ios:bf92f2084b8a78e56b46ea',
    messagingSenderId: '341728391519',
    projectId: 'pet-buddy-4762c',
    storageBucket: 'pet-buddy-4762c.appspot.com',
    iosBundleId: 'com.example.firebaseTest',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBhX7KO6itA26eHPBEa2YiYJ7SpL51wJHk',
    appId: '1:341728391519:web:2efe704dc879af426b46ea',
    messagingSenderId: '341728391519',
    projectId: 'pet-buddy-4762c',
    authDomain: 'pet-buddy-4762c.firebaseapp.com',
    storageBucket: 'pet-buddy-4762c.appspot.com',
    measurementId: 'G-VJH8DC735C',
  );

}