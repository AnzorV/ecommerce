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
    apiKey: 'AIzaSyB1FXup6KlllglxRSxlCLFcR3A3IWxJ-B8',
    appId: '1:863725279280:web:c82a3eb48c6d5485f475f5',
    messagingSenderId: '863725279280',
    projectId: 'iztmivekov-6a70a',
    authDomain: 'iztmivekov-6a70a.firebaseapp.com',
    storageBucket: 'iztmivekov-6a70a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCmekTbMbnEMSEDsY_RyM-qeun3Rw8fDGk',
    appId: '1:863725279280:android:1efbb8a725235b37f475f5',
    messagingSenderId: '863725279280',
    projectId: 'iztmivekov-6a70a',
    storageBucket: 'iztmivekov-6a70a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDYXh-13IgV6KL1rRtrAnRsXF_L3ILt8oQ',
    appId: '1:863725279280:ios:092d62d456adad4ef475f5',
    messagingSenderId: '863725279280',
    projectId: 'iztmivekov-6a70a',
    storageBucket: 'iztmivekov-6a70a.appspot.com',
    androidClientId: '863725279280-87k97dgh934t0348lhd6kj1eketklok3.apps.googleusercontent.com',
    iosClientId: '863725279280-c0kn6qchqsqvb6ik6s452dp2gevpc6c7.apps.googleusercontent.com',
    iosBundleId: 'com.example.ecommerceshop',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDYXh-13IgV6KL1rRtrAnRsXF_L3ILt8oQ',
    appId: '1:863725279280:ios:092d62d456adad4ef475f5',
    messagingSenderId: '863725279280',
    projectId: 'iztmivekov-6a70a',
    storageBucket: 'iztmivekov-6a70a.appspot.com',
    androidClientId: '863725279280-87k97dgh934t0348lhd6kj1eketklok3.apps.googleusercontent.com',
    iosClientId: '863725279280-c0kn6qchqsqvb6ik6s452dp2gevpc6c7.apps.googleusercontent.com',
    iosBundleId: 'com.example.ecommerceshop',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyB1FXup6KlllglxRSxlCLFcR3A3IWxJ-B8',
    appId: '1:863725279280:web:b4cfcfdc635a1909f475f5',
    messagingSenderId: '863725279280',
    projectId: 'iztmivekov-6a70a',
    authDomain: 'iztmivekov-6a70a.firebaseapp.com',
    storageBucket: 'iztmivekov-6a70a.appspot.com',
  );

}