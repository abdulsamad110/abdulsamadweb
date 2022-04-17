import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techorrawebsite/model/portfoliomodel.dart';

import '../../responsive.dart';

class PortfolioCard extends StatelessWidget {
  PortfolioModel portfolioModel;

  PortfolioCard(this.portfolioModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ((Responsive.isDesktop(context))? 600 : 400),
      width: ((Responsive.isDesktop(context))? 450.w : 310),
      decoration: BoxDecoration(
        color: Colors.grey[200].withOpacity(0.8),
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(1, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: Container(
              height: 30,
              width: 200.w,
              decoration: BoxDecoration(
                /*color: Colors.yellowAccent,*/
              ),
              child:
              Center(
                child: Text(portfolioModel.title,
                  style: TextStyle(
                    fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold,),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 15.w,),
            child: ClipRRect(
              borderRadius: new BorderRadius.circular(10.0),
              child: Image(
                fit: BoxFit.fill,
                image: NetworkImage(portfolioModel.pic),
                height: ((Responsive.isDesktop(context))? 300 : 260),
                width: ((Responsive.isDesktop(context))? 420.w : 300),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text(portfolioModel.description,
              maxLines: 6, overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16, color: Colors.grey[600],),
            ),
          ),
        ],
      ),
    );
  }
}
