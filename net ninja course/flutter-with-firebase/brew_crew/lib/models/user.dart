// CREATING CUSTOM USER FROM FIRBASE USER

class User {

  final String uid;

  User({this.uid});

}

// user data class for database.dart

class UserData {

  final String uid;
  final String name;
  final String sugars;
  final int strength;

  UserData({this.uid, this.sugars, this.strength, this.name});

}