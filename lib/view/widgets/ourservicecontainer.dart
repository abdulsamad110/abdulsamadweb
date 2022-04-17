import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:techorrawebsite/model/itsolutionmodel.dart';

import '../../responsive.dart';
class OurServiceContainer extends StatelessWidget {
  //...........................Variables........................................
  @required ItSolutionModel itSolutionModel;

  OurServiceContainer(
      this.itSolutionModel);
  //...........................UI Container in our service widget...............
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8,),
      child: Container(
        height: (Responsive.isDesktop(context))? 320 : 310,
        width: (Responsive.isDesktop(context))? 350 : 220,
        decoration: BoxDecoration(
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
        child: Column(
          children: [
            if(Responsive.isDesktop(context))
              SizedBox(height: 20.h,),
            if(!Responsive.isDesktop(context))
              SizedBox(height: 10.h,),
            Center(child: SvgPicture.network(itSolutionModel.img, color: Colors.deepOrange, height: 75.h,width: 75.w,)),
            if(Responsive.isDesktop(context))
              SizedBox(height: 20.h,),
            if(!Responsive.isDesktop(context))
              SizedBox(height: 10.h,),
            Center(
              child: Text(itSolutionModel.title,
                maxLines: 2, overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold,),
              ),
            ),
            if(Responsive.isDesktop(context))
              SizedBox(height: 20.h,),
            if(!Responsive.isDesktop(context))
              SizedBox(height: 10.h,),
            Container(
              height: 110,
              width: (Responsive.isDesktop(context))? 330 : 200,
              child: Text(
                itSolutionModel.description,
                maxLines: 5, overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 16,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
