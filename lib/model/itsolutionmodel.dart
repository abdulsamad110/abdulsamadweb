import 'package:cloud_firestore/cloud_firestore.dart';

class ItSolutionModel {
  ItSolutionModel({
    this.img,
    this.title,
    this.description,
  });

  String img;
  String title;
  String description;

  factory ItSolutionModel.fromDocumentSnapshot(DocumentSnapshot doc) => ItSolutionModel(
    img: doc["img"],
    title: doc["title"],
    description: doc["description"],
  );
}