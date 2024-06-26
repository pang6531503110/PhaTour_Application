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
    apiKey: 'AIzaSyD8bZPgPA8xaiAb8qrSxx9nZr0eb9o_tmw',
    appId: '1:115016428367:web:2e34125e1bd5231c64333a',
    messagingSenderId: '115016428367',
    projectId: 'my-login-project-a6232',
    authDomain: 'my-login-project-a6232.firebaseapp.com',
    storageBucket: 'my-login-project-a6232.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAaqjrjhYVAx3rZExhYOOfYcXm5FaBNyYY',
    appId: '1:115016428367:android:b17de01ea23a871364333a',
    messagingSenderId: '115016428367',
    projectId: 'my-login-project-a6232',
    storageBucket: 'my-login-project-a6232.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAmkKecYJq6b2vZ08fCusxwc7eu9ALHhO8',
    appId: '1:115016428367:ios:97f53c06e40fb97464333a',
    messagingSenderId: '115016428367',
    projectId: 'my-login-project-a6232',
    storageBucket: 'my-login-project-a6232.appspot.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAmkKecYJq6b2vZ08fCusxwc7eu9ALHhO8',
    appId: '1:115016428367:ios:7964eb3cfa11226464333a',
    messagingSenderId: '115016428367',
    projectId: 'my-login-project-a6232',
    storageBucket: 'my-login-project-a6232.appspot.com',
    iosBundleId: 'com.example.flutterApplication1.RunnerTests',
  );
}
