import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ContactUsCard extends StatelessWidget {
  final String phoneNo, picUrl, title;


  ContactUsCard(this.phoneNo, this.picUrl, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      height: 80,
      child: Row(
        children: [
          Image(image: AssetImage(picUrl), height: 70, width: 60,),
          Column(
            children: [
              SizedBox(height: 10.h,),
              Text(title, style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold,),),
              SizedBox(height: 15.h,),
              Text(phoneNo, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 16, color: Colors.grey.shade700,),),
            ],
          ),
        ],
      ),
    );
  }
}
