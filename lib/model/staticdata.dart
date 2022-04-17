import 'package:cloud_firestore/cloud_firestore.dart';

class StaticData {
  StaticData({
    this.titleAboutUs,
    this.descriptionAboutUs,
    this.titleWhyChooseUs,
    this.descriptionWhyChooseUs,
    this.titleWhyTrustUs,
    this.descriptionWhyTrustUs,
  });

  String titleAboutUs;
  String descriptionAboutUs;
  String titleWhyChooseUs;
  String descriptionWhyChooseUs;
  String titleWhyTrustUs;
  String descriptionWhyTrustUs;

  factory StaticData.fromDocumentSnapshot(DocumentSnapshot doc) => StaticData(
    titleAboutUs: doc["titleAboutUs"],
    descriptionAboutUs: doc["descriptionAboutUs"],
    titleWhyChooseUs: doc["titleWhyChooseUs"],
    descriptionWhyChooseUs: doc["descriptionWhyChooseUs"],
    titleWhyTrustUs: doc["titleWhyTrustUs"],
    descriptionWhyTrustUs: doc["descriptionWhyTrustUs"],
  );
}
