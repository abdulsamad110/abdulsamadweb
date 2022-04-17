import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Row noOfClientProjects({no = '', name='', description='', icon=''}) {
  return Row(
    children: [
      Icon(icon,  size: 60.r,color: Colors.blueAccent,),
      SizedBox(width: 8,),
      RichText(text: TextSpan( style: GoogleFonts.adamina(textStyle:  TextStyle(
          fontSize: 16.sp,
          color: Colors.black
      )),
          children: <TextSpan>[
            TextSpan(text: no, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 31.sp)),
            TextSpan(text: name, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19.sp)),
            TextSpan(text: description,style: TextStyle(fontSize: 18.sp))
          ],
      ),)
      // Text("Client consequuntur voluptas nostrum aliquid ipsam architecto ut.")
    ],
  );
}

// -==================================== contentData ================================
Widget contentData({String text }) {
  return Column(
    children: [
      SizedBox(height: 30.h),
      Row(
        children: [
          SizedBox(width: 50.w),
          Icon(
            Icons.double_arrow_sharp,
            color: Colors.blue,
          ),
          SizedBox(width: 20.w),
          Text(
            text ,
            style:  GoogleFonts.adamina(textStyle:  TextStyle(
                fontSize: 20.sp,
                color: Colors.black
            )),
          ),
        ],
      ),
    ],
  );
}
