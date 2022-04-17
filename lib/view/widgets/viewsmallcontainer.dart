import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:techorrawebsite/controller/home_screen_controller.dart';

import '../../responsive.dart';

class ViewSmallContainer extends StatelessWidget {
  //...................Variable.................................................
  @required
  final String valueoftext;
  @required
  bool check;

  ViewSmallContainer(this.valueoftext, this.check);
  //...................Widget used in why choose us and why trust us ...........
  @override
  Widget build(BuildContext context) {
    return Container(
      width: (Responsive.isDesktop(context)) ? 250.w : 100,
      height: (Responsive.isDesktop(context)) ? 70.h : 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            child: AnimatedContainer(
              width: check
                  ? ((Responsive.isDesktop(context)) ? 250.w : 150.w)
                  : 5.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.deepPurple[400],
              ),
              duration: Duration(milliseconds: 400),
              curve: Curves.easeInCirc,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(left: 6),
              child: Text(
                valueoftext,
                style: TextStyle(
                  color: check ? Colors.white : Colors.black,
                  fontSize: (Responsive.isDesktop(context)) ? 18.sp : 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
