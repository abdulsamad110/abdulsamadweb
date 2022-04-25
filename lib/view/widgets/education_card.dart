import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techorrawebsite/model/education_model.dart';

import '../../responsive.dart';

class EducationCard extends StatelessWidget {
  EducationModel educationModel;
  bool check = false;
  EducationCard(this.educationModel, this.check);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 6,
        horizontal: 6,
      ),
      child: AnimatedContainer(
        height: check ? 430 : 390,
        width: check
            ? ((Responsive.isDesktop(context)) ? 290.w : 230)
            : ((Responsive.isDesktop(context)) ? 280.w : 220),
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
              padding: EdgeInsets.only(top: 6),
              child: Text(educationModel.duration,
                  style: TextStyle(
                      fontSize: (Responsive.isDesktop(context)) ? 12 : 10,
                      color: Colors.black.withOpacity(0.8),
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 6.h),
              child: Center(
                child: Image(
                  image: NetworkImage(educationModel.picture),
                  height: 240,
                  width: check
                      ? ((Responsive.isDesktop(context)) ? 230.w : 200)
                      : ((Responsive.isDesktop(context)) ? 220.w : 200),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 6, left: 3, right: 3),
              child: Center(
                child: Text(
                  educationModel.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 6),
              child: Text(educationModel.degreeName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: (Responsive.isDesktop(context)) ? 12 : 10,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic)),
            ),
          ],
        ),
      ),
    );
  }
}
