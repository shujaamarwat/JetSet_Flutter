import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBfPLZdUoZWwIKDt8EIxZUwy03rDGFGXCg",
            authDomain: "jetset-trip-planner-gxontx.firebaseapp.com",
            projectId: "jetset-trip-planner-gxontx",
            storageBucket: "jetset-trip-planner-gxontx.firebasestorage.app",
            messagingSenderId: "1010802998268",
            appId: "1:1010802998268:web:32c951bd5ae4209a479079"));
  } else {
    await Firebase.initializeApp();
  }
}
