import 'package:firebase_auth/firebase_auth.dart';

class AuthService{
  // declare firebaseAuth
  FirebaseAuth _auth = FirebaseAuth.instance;
  // declare register function

static Future<void> registerFunc(String _email,String _password) async{
    try {
  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: _email,
    password: _password,
  );
} on FirebaseAuthException catch (e) {
  print(e.code);
  if (e.code == 'weak-password') {
    print('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    print('The account already exists for that email.');
  }
} catch (e) {
  print(e);
}
  }



  // declare login function
static Future<void> signInFunc(String _email,String _password) async{
  try {
  final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: _email,
    password: _password
  );
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
  }
}
}
// signOut fucntion
static Future<void> signOutFunc() async{
  await FirebaseAuth.instance.signOut();
}

}