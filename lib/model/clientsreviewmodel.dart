
import 'package:cloud_firestore/cloud_firestore.dart';

class ClientReviewModel {
  ClientReviewModel({
    this.rating,
    this.reviewText,
    this.clientPicture,
    this.clientName,
  });


  ClientReviewModel.name(
      this.rating, this.reviewText, this.clientPicture, this.clientName);

  double rating;
  String reviewText;
  String clientPicture;
  String clientName;

  factory ClientReviewModel.fromDocumentSnapshot(DocumentSnapshot doc) => ClientReviewModel(
    rating: doc["rating"].toDouble(),
    reviewText: doc["reviewText"],
    clientPicture: doc["clientPicture"],
    clientName: doc["clientName"],
  );

}
