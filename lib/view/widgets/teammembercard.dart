import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techorrawebsite/model/teammembermodel.dart';
import 'package:techorrawebsite/model/tools_model.dart';

import '../../responsive.dart';

class TeamMemberCard extends StatelessWidget {
  //...........................Variables.............................................

  ToolsModel tool;
  bool check = false;

  TeamMemberCard(this.tool, this.check);
  //..........................Widget/Card used in OurTeam............................
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 6,
        horizontal: 6,
      ),
      child: AnimatedContainer(
        height: check ? 350 : 320,
        width: check
            ? ((Responsive.isDesktop(context)) ? 200.w : 200)
            : ((Responsive.isDesktop(context)) ? 200.w : 170),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        duration: Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 6.h),
              child: Center(
                child: Image(
                  image: NetworkImage(tool.picture),
                  height: 220,
                  width: check
                      ? ((Responsive.isDesktop(context)) ? 180.w : 160)
                      : ((Responsive.isDesktop(context)) ? 180.w : 160),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Center(
                child: Text(
                  tool.name,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
