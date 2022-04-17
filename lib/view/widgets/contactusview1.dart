import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:techorrawebsite/controller/home_screen_controller.dart';

import '../../responsive.dart';
import 'contactuscard.dart';
class ContactUsView1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
        id: 'homePage',
        builder: (homeScreenController) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: (Responsive.isDesktop(context))? 8.w : 0.w,),
          child: Center(
            child: Container(
              width: 300,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 60.h,),
                    child: Text('CONTACT US', style: TextStyle(fontSize: 22, color: Colors.deepOrange, fontWeight: FontWeight.bold,),),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: (Responsive.isDesktop(context)? 20 : 10), left: 10),
                    child: Text("Let's Connect!", style: TextStyle(fontSize: (Responsive.isDesktop(context))? 38.sp : 28, color: Colors.black, fontWeight: FontWeight.bold,),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: (Responsive.isDesktop(context)? 50 : 10), left: 40),
                    child: ContactUsCard(homeScreenController.companyModel.companyPhoneNo, 'assets/phone.png', 'Phone Number'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: (Responsive.isDesktop(context)? 50 : 10), left: 40),
                    child: ContactUsCard(homeScreenController.companyModel.companyEmail, 'assets/mail.png', 'Email Address'),
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
