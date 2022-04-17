import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techorrawebsite/model/clientsreviewmodel.dart';
import 'package:techorrawebsite/model/experince_model.dart';

import '../../responsive.dart';

class ClientReviewCard extends StatelessWidget {
  Experience experienceModel;

  ClientReviewCard(this.experienceModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420,
      width: (Responsive.isDesktop(context)) ? 310.w : 270,
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(experienceModel.duration,
                style: TextStyle(
                    fontSize: (Responsive.isDesktop(context)) ? 15 : 12,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Container(
              //height: (Responsive.isResponsiveHeight(context))? 140.h : 150,
              width: 290,
              decoration: BoxDecoration(
                  /*color: Colors.yellowAccent,*/
                  ),
              child: Center(
                child: Text(
                  experienceModel.responsibilities,
                  maxLines: 8,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: (Responsive.isDesktop(context)) ? 18 : 14,
                    color: Colors.grey[600],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 25,
              horizontal: 25,
            ),
            child: ClipRRect(
              borderRadius: new BorderRadius.circular(100.0),
              child: Image(
                fit: BoxFit.fill,
                image: NetworkImage(experienceModel.picture),
                width: 110.0,
                height: 110,
              ),
            ),
          ),
          Center(
            child: Text(
              experienceModel.name,
              style: TextStyle(
                fontSize: 26,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
