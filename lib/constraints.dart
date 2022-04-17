import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const colorizeColors = [
  Colors.white,
  Color(0xff12171a),
  Colors.lightBlueAccent,
  Colors.blue,
];

var headingText = GoogleFonts.aclonica(textStyle: TextStyle(
color: Colors.black,
fontSize: 30.sp,
fontWeight: FontWeight.bold
));

var aboutUsText = GoogleFonts.adamina(textStyle:  TextStyle(
    fontSize: 20.sp,
  color: Colors.black
));


List<String> sliderImages = [
  "assets/images/1.jpg",
  "assets/images/2.png",
  "assets/images/3.png",
  "assets/images/4.jpg",
];


List clientCommentsList = [
  {
     "assets/images/client_1.jpg",
      "Muhammad"
  },
  {
    "assets/images/client_2.jpg",
    "Ali"
  }

];