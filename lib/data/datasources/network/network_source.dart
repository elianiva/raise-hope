import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_performance/firebase_performance.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

@module
abstract class ApiService {
  @lazySingleton
  InternetConnectionChecker internetConnectionChecker() => InternetConnectionChecker();

  @lazySingleton
  ImagePicker get imagePicker => ImagePicker();

  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @lazySingleton
  FirebaseFirestore get firebaseFirestore => FirebaseFirestore.instance;

  @lazySingleton
  FirebaseFunctions get cloudFunctions => FirebaseFunctions.instance;

  @lazySingleton
  FirebaseAnalytics get firebaseAnalytics => FirebaseAnalytics.instance;

  @lazySingleton
  FirebaseCrashlytics get firebaseCrashlytics => FirebaseCrashlytics.instance;

  @lazySingleton
  FirebasePerformance get firebasePerformance => FirebasePerformance.instance;

  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn(
        clientId:
            // using web client id to get idToken
            '834108486797-c0neuq5467sfb604cfoanrkhe1d8p15c.apps.googleusercontent.com',
      );
}
