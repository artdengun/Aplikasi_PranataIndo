import 'package:firebase_auth/firebase_auth.dart';

class EmailAuthentication {
  static FirebaseAuth auth = FirebaseAuth.instance;

// untuk signup

  static Future<FirebaseUser> signUp(String email, String password) async {
    try {
      AuthResult result = await auth.createUserWithEmailAndPassword(
          email: email.trim(), password: password);

      FirebaseUser firebaseUser = result.user;
      return firebaseUser;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  static Future<FirebaseUser> signIn(String email, String password) async {
    try {
      AuthResult result = await auth.signInWithEmailAndPassword(
          email: email.trim(), password: password);

      FirebaseUser firebaseUser = result.user;
      return firebaseUser;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  static Future<void> signOut() async {
    auth.signOut();
  }

  static Stream<FirebaseUser> get firebaseUserStream => auth.onAuthStateChanged;
}
