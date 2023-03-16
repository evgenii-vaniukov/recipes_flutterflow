import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAgEbDcJ1s0sJewzKy9HScBlszvQiON_0w",
            authDomain: "recipes-e853a.firebaseapp.com",
            projectId: "recipes-e853a",
            storageBucket: "recipes-e853a.appspot.com",
            messagingSenderId: "45299556682",
            appId: "1:45299556682:web:124a1faec929978b6ce1b3"));
  } else {
    await Firebase.initializeApp();
  }
}
