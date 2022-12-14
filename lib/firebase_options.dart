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
    apiKey: 'AIzaSyAHE4qWGMZBrnF91MNgnDLCVmaHYwMLR2o',
    appId: '1:596771461195:web:ef1ddda7ec8bc0032a15ce',
    messagingSenderId: '596771461195',
    projectId: 'buddhist-poetry',
    authDomain: 'buddhist-poetry.firebaseapp.com',
    storageBucket: 'buddhist-poetry.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyACAGj4X0gGOZ3sE00GXGOjl7GV5U84XcI',
    appId: '1:596771461195:android:0ae807c3f75e75182a15ce',
    messagingSenderId: '596771461195',
    projectId: 'buddhist-poetry',
    storageBucket: 'buddhist-poetry.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBSxZcq-Y8wwXr1cfUvIxiiuroExkzywlI',
    appId: '1:596771461195:ios:6176420e03d3b2f52a15ce',
    messagingSenderId: '596771461195',
    projectId: 'buddhist-poetry',
    storageBucket: 'buddhist-poetry.appspot.com',
    iosClientId: '596771461195-ripqm82psg3nqr0dv19t52kqhcrspbif.apps.googleusercontent.com',
    iosBundleId: 'com.example.buddhistPoetry',
  );
}
