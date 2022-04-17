import 'package:cloud_firestore/cloud_firestore.dart';

class ToolsModel {
  ToolsModel({
    this.name,
    this.picture,
  });

  String name;
  String picture;

  factory ToolsModel.fromDocumentSnapShot(DocumentSnapshot json) => ToolsModel(
        name: json["name"],
        picture: json["picture"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "picture": picture,
      };
}
