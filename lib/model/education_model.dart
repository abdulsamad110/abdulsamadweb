import 'package:cloud_firestore/cloud_firestore.dart';

class EducationModel {
  EducationModel({
    this.name,
    this.degreeName,
    this.duration,
    this.picture,
  });

  String name;
  String degreeName;
  String duration;
  String picture;

  factory EducationModel.fromDocumentSnap(DocumentSnapshot json) =>
      EducationModel(
        name: json["name"],
        degreeName: json["degreeName"],
        duration: json["duration"],
        picture: json["picture"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "degreeName": degreeName,
        "duration": duration,
        "picture": picture,
      };
}
