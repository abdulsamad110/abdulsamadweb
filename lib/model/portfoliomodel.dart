import 'package:cloud_firestore/cloud_firestore.dart';

class PortfolioModel {
  PortfolioModel({
    this.title,
    this.pic,
    this.description,
  });

  String title;
  String pic;
  String description;

  factory PortfolioModel.fromDocumentSnapshot(DocumentSnapshot doc) => PortfolioModel(
    title: doc["title"],
    pic: doc["pic"],
    description: doc["description"],
  );

}
