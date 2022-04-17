import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techorrawebsite/controller/home_screen_controller.dart';


Widget menuBar({title = '', AutoScrollController controller}) {
  Widget tab(String value, bool isSelected){
    return Padding(
      padding: EdgeInsets.only(right: 10.w),
      child: Container(
        height: 45,
        width: 140.w,
        decoration: BoxDecoration(
          color: isSelected? Colors.white.withOpacity(0.7) : Colors.transparent,
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Center(child: Text(value, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: isSelected? Colors.lightBlue[900] : Colors.white),)),
      ),
    );
  }
  return GetBuilder<HomeScreenController>(
      init: HomeScreenController(),
      id: 'bar',
      builder: (homeScreenController) {
      return Container(
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              for(int i=0; i<homeScreenController.listofTab.length; i++)
              InkWell(
                onTap: () {
                  homeScreenController.changeIndex(i);
                },
                onHover: (isHovering) {
                            if (isHovering) {
                              homeScreenController.hoveringIndex = i;

                                  //The mouse is hovering.
                            }
                            else {
                              homeScreenController.hoveringIndex = -1;
                                //The mouse is no longer hovering.
                            }
                            homeScreenController.update(['bar']);
                },
                child: tab(homeScreenController.listofTab[i], homeScreenController.selectedIndex == i
                 || homeScreenController.hoveringIndex==i),
              ),
            ],
          ),
      );
    }
  );
}
