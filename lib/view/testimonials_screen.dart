import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techorrawebsite/controller/home_screen_controller.dart';
import 'package:techorrawebsite/view/widgets/clientreviewcard.dart';

import '../responsive.dart';

class TestimonialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
        init: HomeScreenController(),
        id: 'testimonial',
        builder: (homeScreenController) {
          return AutoScrollTag(
            key: ValueKey(2),
            controller: homeScreenController.controller,
            index: 2,
            child: Container(
              //height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 40),
                child: Column(
                  children: [
                    Center(
                        child: Text(
                      'Experience',
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    )),
                    InkWell(
                      onTap: () {},
                      onHover: (hovering) {
                        if (hovering) {
                          homeScreenController.testimonialStartStop = false;
                        } else {
                          homeScreenController.testimonialStartStop = true;
                        }
                        homeScreenController.update(['testimonial']);
                      },
                      child: Padding(
                        padding: EdgeInsets.only(top: 2),
                        child: CarouselSlider(
                          items: homeScreenController.experiences.map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ClientReviewCard(i),
                                  ],
                                );
                              },
                            );
                          }).toList(),
                          options: CarouselOptions(
                            autoPlay: homeScreenController.testimonialStartStop,
                            height: 550,
                            autoPlayInterval: Duration(seconds: 2),
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 1000),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enableInfiniteScroll: true,
                            scrollDirection: Axis.horizontal,
                            viewportFraction:
                                (Responsive.isDesktop(context)) ? 0.32 : 0.95,
                            // scrollPhysics: NeverScrollableScrollPhysics(),
                            //enlargeCenterPage: true,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
