import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  User({
    this.name,
    this.picture,
    this.about,
  });

  String name;
  String picture;
  String about;

  factory User.fromDocumentSnapshot(DocumentSnapshot doc) => User(
        name: doc["name"],
        picture: doc["picture"],
        about: doc["about"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "picture": picture,
        "about": about,
      };
}
