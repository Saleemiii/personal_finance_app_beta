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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAIi3m5tr3rnwyHZNOwTNEntpH89lpVVnU',
    appId: '1:682545265646:android:0c26097d0b2e203733ecff',
    messagingSenderId: '682545265646',
    projectId: 'personal-finance-app-90e94',
    storageBucket: 'personal-finance-app-90e94.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBv7u0Hnr8fjQZD4Yx8iv0aPOEDB08AOZ0',
    appId: '1:682545265646:ios:53980f2db817816033ecff',
    messagingSenderId: '682545265646',
    projectId: 'personal-finance-app-90e94',
    storageBucket: 'personal-finance-app-90e94.appspot.com',
    androidClientId: '682545265646-73d4j0r4uibf65fettkvmfbqngjfo2cs.apps.googleusercontent.com',
    iosClientId: '682545265646-lrbvf05ivpcle5br92lk4e955v4tm97e.apps.googleusercontent.com',
    iosBundleId: 'com.example.personalFinanceAppBeta',
  );
}
