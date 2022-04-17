import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:techorrawebsite/controller/home_screen_controller.dart';
import 'package:techorrawebsite/view/whychooseus.dart';
import 'package:techorrawebsite/view/whytrustus.dart';
import 'package:techorrawebsite/view/widgets/aboutmainpage.dart';

class AboutUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
        init: HomeScreenController(),
        id: 'aboutPage',
        builder: (homeScreenController) {
          return AutoScrollTag(
              key: ValueKey(1),
              controller: homeScreenController.controller,
              index: 1,
              child: Center(
                child: Column(
                  children: [
                    AboutMainPage(),
                    WhyChooseUs(),
                    SizedBox(
                      height: 50,
                    ),
                    WhyTrustUs(),
                  ],
                ),
              ));
        });
  }
}


// =====================  this column is taken for right side which have  ===================
//        =======================  Image, icons and text  ====================

// SizedBox(width: 20.w),
//
// Column(
//   crossAxisAlignment: CrossAxisAlignment.start,
//   mainAxisAlignment: MainAxisAlignment.start,
//   children: [
//     SizedBox(height: Get.size.height * 0.30,),
//     Row(
//       children: [
//         SizedBox(width: size.width * .030,),
//         Container(
//           width: size.width * .30,
//           height: size.height * .77,
//           decoration: BoxDecoration(
//             image: DecorationImage(image: AssetImage
//               ("assets/images/about_us_2.jpg",),
//                 fit: BoxFit.fill),
//             borderRadius: BorderRadius.only(
//               bottomLeft: Radius.circular(30),
//               topRight: Radius.circular(30),),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.5),
//                 spreadRadius: 5,
//                 blurRadius: 7,
//                 offset: Offset(0,
//                     3), // changes position of shadow
//               ),
//             ],
//           ),
//
//         ),
//       ],
//     ),

// ======= these column are taken for No of client projects etc =======

//   Padding(
//     padding: EdgeInsets.only(left: 50.w),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//       SizedBox(height: 40.h,),
//       noOfClientProjects(
//           icon: Icons.account_circle_outlined,
//           No: "68",
//           name: "\nClient",
//           description: " consequuntur voluptas nostrum aliquid \nipsam architecto ut."
//       ),
//       SizedBox(height: 20.h,),
//       noOfClientProjects(
//           icon: Icons.book_outlined,
//           No: "72",
//           name: "\nProjects",
//           description: " consequuntur voluptas nostrum aliquid \nipsam architecto ut."
//       ),
//       SizedBox(height: 20.h,),
//       noOfClientProjects(
//           icon: Icons.access_time,
//           No: "14",
//           name: "\nYear",
//           description: "of experience consequuntur voluptas \nnostrum aliquid ipsam architecto ut."
//       ),
//       SizedBox(height: 10.h,),
//     ],),
//   ),

// //     ============== line and title ================
//
// Row(
// mainAxisAlignment: MainAxisAlignment.start,
// children: [
// Container(
// padding: EdgeInsets.only(bottom: 60),
// width: 6,
// height: 80,
// decoration: BoxDecoration(color: Color(0xff1898d3),
// borderRadius: BorderRadius.circular(10)
// ),
//
// child: DecoratedBox(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// color: Color(0xff12171a)
// ),
// ),
// ),
// SizedBox(width: 17,),
// Text("About Us",
// style: headingText),
// ],
// ),
