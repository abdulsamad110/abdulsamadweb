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
            key: ValueKey(6),
            controller: homeScreenController.controller,
            index: 6,
            child: Container(
              //height: (Responsive.isResponsiveHeight(context))? MediaQuery.of(context).size.height : 600,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 160),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ContactUsView1(),
                    SizedBox(
                      height: 120.h,
                    ),
                    SocialMediaConnect(),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
