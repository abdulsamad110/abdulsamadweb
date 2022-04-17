import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:techorrawebsite/controller/home_screen_controller.dart';
import 'package:techorrawebsite/responsive.dart';
import 'package:techorrawebsite/view/widgets/contactusmap.dart';
import 'package:techorrawebsite/view/widgets/contactusview1.dart';
import 'package:techorrawebsite/view/widgets/socialmediaconnect.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ContactUs extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
        id: 'homePage',
        builder: (homeScreenController) {
        return AutoScrollTag(
            key: ValueKey(5),
            controller: homeScreenController.controller,
            index: 5,
            child: Container(
              //height: (Responsive.isResponsiveHeight(context))? MediaQuery.of(context).size.height : 600,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 80),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            ContactUsView1(),
                            if(!Responsive.isDesktop(context))
                              Padding(
                                padding: EdgeInsets.only(left: 30),
                                child: Center(child: ContactUsMap(23, 34)),
                              ),

                          ],
                        ),
                        if(Responsive.isDesktop(context))
                        Padding(
                          padding: (Responsive.isDesktop(context))? EdgeInsets.only(top: 60.h, right: 70.w) : EdgeInsets.zero,
                          child: ContactUsMap(32, 23),
                        ),
                      ],
                    ),
                    Center(
                      child:
                      Padding(
                        padding: EdgeInsets.only(top: 80.h),
                        child: SocialMediaConnect(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        );
      }
    );
  }
}