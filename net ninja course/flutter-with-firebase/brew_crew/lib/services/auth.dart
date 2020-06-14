import 'package:brew_crew/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user object based on FirebaseUser
  User _userFromFirebaseUser(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

  // auth change the user stream | Set up the stream for anytime a user signs in/ out
  Stream<User> get user {
    return _auth.onAuthStateChanged.map(_userFromFirebaseUser);
    // .map((FirebaseUser user) => _userFromFirebaseUser(user));
  }

  // sign in anon
  Future signInAnon () async {
    
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    }
    
    catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign in w email & pw

  // register w email & pw

  // sign out
  Future signOut() async {
    try{
      return await _auth.signOut();
    }
    catch (e) {
      print(e.toString());
      return null;
    }
  }

}