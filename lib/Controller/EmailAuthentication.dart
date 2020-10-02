import 'package:desain_awal/Controller/GoogleAuthentication.dart';
import 'package:firebase_auth/firebase_auth.dart';

FirebaseAuth auth = FirebaseAuth.instance;

Future<bool> signIn(String email, String passowrd) async {
  try {
    AuthResult result =
        await auth.signInWithEmailAndPassword(email: email, password: email);
    FirebaseUser user = result.user;
    return Future.value(true);
  } catch (e) {
    switch (e.code) {
      case 'ERROR_INVALID_EMAIL':
        print('error');
    }
  }
}

Future<bool> signUp(String email, String passowrd) async {
  try {
    AuthResult result = await auth.createUserWithEmailAndPassword(
        email: email, password: email);
    FirebaseUser user = result.user;
    return Future.value(true);
  } catch (e) {
    switch (e.code) {
      case 'ERROR_EMAIL_ALREADY_IN_USE':
        print('error');
    }
  }
}

Future<bool> signOutUser() async {
  FirebaseUser user = await auth.currentUser();

  if (user.providerData[1].providerId == 'google.com') {
    await googleSIgnIn.disconnect();
  }
  await auth.signOut();
}
