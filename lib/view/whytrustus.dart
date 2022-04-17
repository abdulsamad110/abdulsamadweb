import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:techorrawebsite/controller/home_screen_controller.dart';
import 'package:techorrawebsite/view/widgets/viewsmallcontainer.dart';

import '../responsive.dart';

class WhyTrustUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
        id: 'aboutPage2',
        builder: (homeScreenController) {
          return Padding(
            padding: EdgeInsets.only(left: 15),
            child: Container(
              //height: MediaQuery.of(context).size.height*0.9,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Container(
                    //height: 600,
                    width: (Responsive.isDesktop(context)) ? 600.w : 1000.w,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 15),
                              child: Text(
                                'SKILLS',
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.deepOrange,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Container(
                            width: (Responsive.isDesktop(context))
                                ? 600.w
                                : 1000.w,
                            //height: 150.h,
                            child: Text(
                              "My top skills from which I can provide you with the best services.",
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize:
                                      (Responsive.isDesktop(context)) ? 36 : 28,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Wrap(
                            children: [
                              for (int i = 0;
                                  i <
                                      homeScreenController
                                          .listWhyTrustUs.length;
                                  i++)
                                Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      0.w, 10.h, 50.w, 10.h),
                                  child: InkWell(
                                    onTap: () {},
                                    onHover: (isHovering) {
                                      if (isHovering) {
                                        homeScreenController
                                            .hoveringIndexWhyTrustUs = i;
                                        //The mouse is hovering.
                                      } else {
                                        homeScreenController
                                            .hoveringIndexWhyTrustUs = -1;
                                        //The mouse is no longer hovering.
                                      }
                                      homeScreenController
                                          .update(['aboutPage2']);
                                    },
                                    //////////////////////////////////////////////
                                    child: ViewSmallContainer(
                                        homeScreenController.listWhyTrustUs[i],
                                        homeScreenController
                                                .hoveringIndexWhyTrustUs ==
                                            i),
                                    //////////////////////////////////////////////
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (Responsive.isDesktop(context))
                    Center(
                      child: Container(
                        height: 500.h,
                        width: 550.w,
                        child: Image(
                          image: AssetImage('assets/trustus.png'),
                          width: 500.w,
                          height: 500.h,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          );
        });
  }
}
