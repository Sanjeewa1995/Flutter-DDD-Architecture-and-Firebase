import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:injectable_generator/injectable_generator.dart';

@module
abstract class FirebaseInjectableModule {
  @lazySingleton
  @injectable
  GoogleSignIn get googleSignIn => GoogleSignIn();
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  // @lazySingleton
  // Firestore get firestore => Firestore.instance;
}
