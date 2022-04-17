import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techorrawebsite/controller/home_screen_controller.dart';

import '../constraints.dart';
import '../responsive.dart';

class CoverScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
        init: HomeScreenController(),
        id: 'homepage',
        builder: (homeScreenController) {
          return AutoScrollTag(
            key: ValueKey(0),
            controller: homeScreenController.controller,
            index: 0,
            child: Center(
              child: Container(
                //height: Get.size.height,
                width: Get.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 40,
                    left: 60.w,
                    right: 60.w,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // ========== this column contain logo, title and contact us button  ===========
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 30.h, top: 30.h),
                            child: Container(
                              width: 200.r,
                              height: 200.r,
                              child: (homeScreenController.userModel != null)
                                  ? Image.network(
                                      homeScreenController.userModel.picture,
                                    )
                                  : Image.asset('assets/sam.png'),
                            ),
                          ),
                          // ========== title  ===========
                          Padding(
                            padding: EdgeInsets.only(top: 15, bottom: 15),
                            child: Text(
                              (homeScreenController.userModel != null)
                                  ? homeScreenController.userModel.name
                                  : "Loading ..... ",
                              style: TextStyle(
                                  fontSize:
                                      (Responsive.isDesktop(context) ? 60 : 40),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 60),
                            child: Container(
                              //height: (Responsive.isResponsiveHeight(context))? 140.h : 140,
                              width: (Responsive.isDesktop(context))
                                  ? 480.w
                                  : 900.w,
                              child: Text(
                                (homeScreenController.userModel != null)
                                    ? homeScreenController.userModel.about
                                    : "Loading ..... ",
                                maxLines: 8,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          // ========== Contact Us & About Us button   ===========
                          Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Wrap(
                              children: [
                                InkWell(
                                  onTap: () {
                                    homeScreenController.changeIndex(1);
                                  },
                                  onHover: (isHovering) {
                                    if (isHovering) {
                                      homeScreenController
                                          .firstScreenbtnHoverValue = 120;
                                      //The mouse is hovering.
                                    } else {
                                      homeScreenController
                                          .firstScreenbtnHoverValue = 0;
                                      //The mouse is no longer hovering.
                                    }
                                    homeScreenController.update(['homepage']);
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Colors.lightBlue[900],
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          child: AnimatedContainer(
                                            width: homeScreenController
                                                .firstScreenbtnHoverValue,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              color: Colors.blue[600],
                                            ),
                                            duration:
                                                Duration(milliseconds: 500),
                                            curve: Curves.easeInCirc,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "About",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20.w),
                                  child: InkWell(
                                    onTap: () {
                                      homeScreenController.changeIndex(6);
                                    },
                                    onHover: (isHovering) {
                                      if (isHovering) {
                                        homeScreenController
                                            .firstScreenbtn2HoverValue = 120;
                                        //The mouse is hovering.
                                      } else {
                                        homeScreenController
                                            .firstScreenbtn2HoverValue = 0;
                                        //The mouse is no longer hovering.
                                      }
                                      homeScreenController.update(['homepage']);
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 120,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: Colors.lightBlue[900],
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            child: AnimatedContainer(
                                              width: homeScreenController
                                                  .firstScreenbtn2HoverValue,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(6),
                                                color: Colors.blue[600],
                                              ),
                                              duration:
                                                  Duration(milliseconds: 500),
                                              curve: Curves.easeInCirc,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "Contact",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                              ),
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
                        ],
                      ),
                      //  ====================  Menu  ================
                      if (Responsive.isDesktop(context))
                        Column(
                          children: [
                            // ==========  Slider  ===========
                            Padding(
                              padding: EdgeInsets.only(top: 100, right: 80.w),
                              child: Container(
                                  height: 400,
                                  width: 450.w,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: CarouselSlider(
                                      options: CarouselOptions(
                                        enlargeCenterPage: true,
                                        autoPlay: true,
                                        pauseAutoPlayOnTouch: true,
                                        autoPlayCurve: Curves.easeInOutBack,
                                        autoPlayInterval: Duration(seconds: 3),
                                        autoPlayAnimationDuration:
                                            Duration(milliseconds: 1800),
                                        viewportFraction: 1,
                                        scrollPhysics:
                                            NeverScrollableScrollPhysics(),
                                      ),
                                      items: sliderImages.map((sliderImages) {
                                        return Builder(
                                            builder: (BuildContext context) {
                                          return Column(
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                child: Image.asset(
                                                  sliderImages,
                                                  //fit: BoxFit.fill,
                                                ),
                                              ),
                                            ],
                                          );
                                        });
                                      }).toList())),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
