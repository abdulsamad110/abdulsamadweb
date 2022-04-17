import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:techorrawebsite/controller/home_screen_controller.dart';
import 'package:techorrawebsite/view/widgets/viewsmallcontainer.dart';

import '../responsive.dart';

class WhyChooseUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
        init: HomeScreenController(),
        id: 'aboutPage1',
        builder: (homeScreenController) {
          return Container(
            //height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: (Responsive.isDesktop(context))
                  ? EdgeInsets.zero
                  : EdgeInsets.only(top: 40),
              child: Row(
                children: [
                  if (Responsive.isDesktop(context))
                    Container(
                      height: 500.h,
                      width: 650.w,
                      child: Center(
                        child: Image(
                          image: AssetImage('assets/choose.png'),
                          width: 500.w,
                          height: 500.h,
                        ),
                      ),
                    ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Container(
                        //height: 700,
                        width: (Responsive.isDesktop(context)) ? 600.w : 1000.w,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal: 10,
                                  ),
                                  child: Text(
                                    'WHY CHOOSE ME?',
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
                              padding: EdgeInsets.only(
                                top: 15,
                              ),
                              child: Container(
                                width: (Responsive.isDesktop(context))
                                    ? 600.w
                                    : 1000.w,
                                //height: 150,
                                child: Text(
                                  "Safeguard your brand with our wide range of services.",
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: (Responsive.isDesktop(context))
                                          ? 36
                                          : 28,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 15),
                              child: Wrap(
                                children: [
                                  for (int i = 0;
                                      i <
                                          homeScreenController
                                              .listWhyChooseUs.length;
                                      i++)
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          0.w, 8.h, 50.w, 10.h),
                                      child: InkWell(
                                        onTap: () {},
                                        onHover: (isHovering) {
                                          if (isHovering) {
                                            homeScreenController
                                                .hoveringIndexWhyChooseUs = i;
                                            //The mouse is hovering.
                                          } else {
                                            homeScreenController
                                                .hoveringIndexWhyChooseUs = -1;
                                            //The mouse is no longer hovering.
                                          }
                                          homeScreenController
                                              .update(['aboutPage1']);
                                        },
                                        //////////////////////////////////////////////
                                        child: ViewSmallContainer(
                                            homeScreenController
                                                .listWhyChooseUs[i],
                                            homeScreenController
                                                    .hoveringIndexWhyChooseUs ==
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
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
