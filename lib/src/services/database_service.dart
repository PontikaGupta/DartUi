import 'dart:async';
import 'package:angular/angular.dart';
import 'package:firebase/firebase.dart' as fb;

@Injectable()
class DatabaseService {
  fb.Auth _fbAuth;
  fb.GoogleAuthProvider _fbGoogleAuthProvider;
  fb.User user;

  DatabaseService() {
    fb.initializeApp(
      apiKey: "AIzaSyDrHAptE84FDvapSvG_j2_OXcG5aF1XGqk",
      authDomain: "login-284f8.firebaseapp.com",
      databaseURL: "https://login-284f8.firebaseio.com",
      projectId: "login-284f8",
      storageBucket: "login-284f8.appspot.com",
    );
    _fbGoogleAuthProvider = new fb.GoogleAuthProvider();
    _fbAuth = fb.auth();
    _fbAuth.onAuthStateChanged.listen(_authChanged);
  }

  void _authChanged(fb.User fbUser) {
    user = fbUser;
  }

  Future signIn() async {
    try {
      await _fbAuth.signInWithPopup(_fbGoogleAuthProvider);
    } catch (error) {
      print("$runtimeType::login() -- $error");
    }
  }

  void signOut() {
    _fbAuth.signOut();
  }
}
