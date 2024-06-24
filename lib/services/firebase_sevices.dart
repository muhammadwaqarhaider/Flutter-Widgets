import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../view/screens/home/google_screen.dart';
import '../view/screens/home/textfield_widget.dart';

class FirebaseServices {
  final _auth = FirebaseAuth.instance;
  final _googleSignIn = GoogleSignIn();

  get user => _auth.currentUser;

  signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();

      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

        final AuthCredential authCredential = GoogleAuthProvider.credential(
            accessToken: googleSignInAuthentication.accessToken,
            idToken: googleSignInAuthentication.idToken);
        UserCredential userDetail= await _auth.signInWithCredential(authCredential);
        print(userDetail.user?.displayName);
        Get.to(const GoogleScreen());
      }
    } on FirebaseAuthException catch (e) {
      print(e.message);
      throw e;
    }
  }


  Future signIn({required String email,required String password}) async {
    print("Email:$email");
    print("password:" + password);
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      Get.to(GoogleScreen());
    } on FirebaseAuthException catch (e) {
      print("Error Message");
      print(e.message);
    }
  }

  Future signUp({required String email, required String password}) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }


    signOut() async {
      await _auth.signOut();
      await _googleSignIn.signOut();
      Get.offAll(TextFieldWidget());
    }
  }



