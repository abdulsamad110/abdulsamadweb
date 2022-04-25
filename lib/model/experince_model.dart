import 'package:cloud_firestore/cloud_firestore.dart';

class Experience {
  Experience({
    this.name,
    this.picture,
    this.responsibilities,
    this.duration,
    this.designation,
  });

  String name;
  String picture;
  String responsibilities;
  String duration;
  String designation;

  factory Experience.fromDocumentSnapShot(DocumentSnapshot doc) => Experience(
        name: doc["name"],
        picture: doc["picture"],
        responsibilities: doc["responsibilities"],
        duration: doc["duration"],
        designation: doc["designation"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "picture": picture,
        "responsibilities": responsibilities,
        "duration": duration,
        "designation": designation,
      };
}
