import 'package:cloud_firestore/cloud_firestore.dart';

class CompanyModel {
  CompanyModel({
    this.companyIcon,
    this.companyName,
    this.companyDescription,
    this.companyPhoneNo,
    this.companyEmail,
  });

  String companyIcon;
  String companyName;
  String companyDescription;
  String companyPhoneNo;
  String companyEmail;

  factory CompanyModel.fromDocumentSnapShot(DocumentSnapshot doc) => CompanyModel(
    companyIcon: doc["companyIcon"],
    companyName: doc["companyName"],
    companyDescription: doc["companyDescription"],
    companyPhoneNo: doc["companyPhoneNo"],
    companyEmail: doc["companyEmail"],
  );
}
