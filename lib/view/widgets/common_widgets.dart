import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


// =============== --------  Section Title And SubTitle    ---------  ==================
Column sectionTitleAndSubTitle({String title, String subtitle}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // SizedBox(width: Get.size.width * 0.15,),
          Text(title, style: GoogleFonts.aclonica(textStyle: TextStyle(
              color: Colors.black87,
              fontSize: 35.sp,
              fontWeight: FontWeight.bold
          ))),
          SizedBox(width: 25.w,),
          Container(width: Get.size.width * 0.08,
            height: Get.size.height * 0.002,
            decoration: BoxDecoration(color: Color(0xff1898d3),borderRadius: BorderRadius.circular(10)),
          ),
        ],
      ),
      SizedBox(height: 20.h,),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Text(subtitle, style: GoogleFonts.adamina(textStyle: TextStyle(
            color: Colors.black,
            fontSize: 27.sp,
            fontWeight: FontWeight.bold
        ))),
      ],),
    ],
  );
}