import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:techorrawebsite/controller/home_screen_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class DrawerClass extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
        init: HomeScreenController(),
        id: 'bar',
        builder: (homeScreenController) {
        return Drawer(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.indigo.shade900, Colors.lightBlue.shade900],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 40,),
                for(int i=0; i<homeScreenController.listofTab.length; i++)
                  InkWell(
                    onTap: () {
                      homeScreenController.changeIndex(i);
                    },
                    child: tab(homeScreenController.listofTab[i], homeScreenController.selectedIndexDrawer == i),
                  ),
              ],
            ),
          ),
        );
      }
    );
  }

  Widget tab(String value, bool isSelected){
    return Padding(
      padding: EdgeInsets.only(right: 10.w),
      child: Container(
        height: 45,
        width: 135,
        decoration: BoxDecoration(
          color: isSelected? Colors.white.withOpacity(0.7) : Colors.transparent,
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Center(child: Text(value, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: isSelected? Colors.lightBlue[900] : Colors.white),)),
      ),
    );
  }

}
