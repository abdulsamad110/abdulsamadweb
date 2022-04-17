import 'package:cloud_firestore/cloud_firestore.dart';

class MapModel {
  MapModel({
    this.latitude,
    this.longitude,
  });

  String latitude;
  String longitude;

  factory MapModel.fromDocumentSnapShot(DocumentSnapshot doc) => MapModel(
    latitude: doc["latitude"],
    longitude: doc["longitude"],
  );
}