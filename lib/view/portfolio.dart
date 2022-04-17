import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techorrawebsite/controller/home_screen_controller.dart';
import 'package:techorrawebsite/view/widgets/portfoliocard.dart';

import '../responsive.dart';


class Portfolio extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
        id: 'portfolio',
        builder: (homeScreenController) {
        return AutoScrollTag(
            key: ValueKey(4),
            controller: homeScreenController.controller,
            index: 4,
            child: Container(
              //height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 60),
                    child: Center(child: Text('PORTFOLIO', style: TextStyle(fontSize: 22, color: Colors.deepOrange, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30.h),
                    child: Center(child: Text('Our Work', style: TextStyle(fontSize: (Responsive.isDesktop(context))? 38.sp : 30, color: Colors.black, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30.h),
                    child: CarouselSlider(items: homeScreenController.portfolios.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {},
                                onHover: (hovering){
                                  if(hovering){
                                    homeScreenController.portfolioStartStop = false;
                                  }
                                  else{
                                    homeScreenController.portfolioStartStop = true;
                                  }
                                  homeScreenController.update(['portfolio']);
                                },
                                  child: PortfolioCard(i),
                              ),
                            ],
                          );
                        },
                      );
                    }).toList(),
                      options: CarouselOptions(
                        autoPlay: homeScreenController.portfolioStartStop,
                        height: 450,
                        autoPlayInterval: Duration(seconds: 2),
                        autoPlayAnimationDuration: Duration(milliseconds: 1000),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        viewportFraction: (Responsive.isDesktop(context))? 0.4 : 1.2,
                        scrollPhysics: NeverScrollableScrollPhysics(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        );
      }
    );
  }
}
