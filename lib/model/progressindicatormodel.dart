import 'package:cloud_firestore/cloud_firestore.dart';

class ProgressIndicatorModel {
  ProgressIndicatorModel({
    this.title,
    this.percentage,
  });

  String title;
  double percentage;

  factory ProgressIndicatorModel.fromDocumentSnapshot(DocumentSnapshot doc) => ProgressIndicatorModel(
    title: doc["title"],
    percentage: doc["percentage"].toDouble(),
  );
}