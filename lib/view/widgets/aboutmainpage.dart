import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techorrawebsite/controller/home_screen_controller.dart';
import 'package:techorrawebsite/view/widgets/progressindicator.dart';

import '../../responsive.dart';

class AboutMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
        init: HomeScreenController(),
        id: 'aboutPage',
        builder: (homeScreenController) {
          return Container(
            //height: Get.height,
            width: Get.width,
            child: Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: (Responsive.isDesktop(context))
                          ? EdgeInsets.zero
                          : EdgeInsets.only(top: 60),
                      child: Container(
                        height: 40,
                        width: (Responsive.isDesktop(context)) ? 600.w : 1000.w,
                        child: Text(
                          'ABOUT MYSELF',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.h),
                      child: Container(
                        width: (Responsive.isDesktop(context)) ? 600.w : 1000.w,
                        //height: 150,
                        child: Text(
                          "Providing your business with quality and affordable IT services.",
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize:
                                  (Responsive.isDesktop(context)) ? 40 : 28,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    for (int i = 0;
                        i < homeScreenController.progressIndicatorList.length;
                        i++)
                      ProgressIndicatorWidget(
                          homeScreenController.progressIndicatorList[i]),
                  ],
                ),
                if (Responsive.isDesktop(context))
                  Column(
                    children: [
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(left: 30.w),
                          child: Container(
                            height: 700.h,
                            width: 500.w,
                            decoration: BoxDecoration(
                                //color: Colors.yellowAccent,
                                ),
                            child: Center(
                              child: Image(
                                image: AssetImage('assets/about.png'),
                                width: 500.w,
                                height: 500.h,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
              ],
            ),
          );
        });
  }
}
