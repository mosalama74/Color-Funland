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
    apiKey: 'AIzaSyCR72jG-nCymT7eksD_vL_J6JtHA_4fuXI',
    appId: '1:816803293671:web:8e4b8b09dc0b954a487542',
    messagingSenderId: '816803293671',
    projectId: 'color-funland',
    authDomain: 'color-funland.firebaseapp.com',
    storageBucket: 'color-funland.firebasestorage.app',
    measurementId: 'G-CP6EHWZCQW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDSgAqlpmS3idMNQoR6Hiphoy6eCMpXQiM',
    appId: '1:816803293671:android:c3c7a64425314e75487542',
    messagingSenderId: '816803293671',
    projectId: 'color-funland',
    storageBucket: 'color-funland.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDFtgwysH_Ukw4A9seWxpp_pat8lcgpouM',
    appId: '1:816803293671:ios:64a42430cd4090e5487542',
    messagingSenderId: '816803293671',
    projectId: 'color-funland',
    storageBucket: 'color-funland.firebasestorage.app',
    iosBundleId: 'com.mosalama.colorFunland',
  );
}
