import 'package:cloud_firestore/cloud_firestore.dart';

class TeamMemberModel {
  TeamMemberModel({
    this.imgUrl,
    this.memberName,
    this.designation,
  });

  String imgUrl;
  String memberName;
  String designation;

  factory TeamMemberModel.fromDocumentSnapshot(DocumentSnapshot doc) => TeamMemberModel(
    imgUrl: doc["imgUrl"],
    memberName: doc["memberName"],
    designation: doc["designation"],
  );
}