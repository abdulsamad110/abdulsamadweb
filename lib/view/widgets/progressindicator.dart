import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:techorrawebsite/model/progressindicatormodel.dart';

import '../../responsive.dart';
class ProgressIndicatorWidget extends StatelessWidget {
  @required ProgressIndicatorModel progressIndicatorModel;

  ProgressIndicatorWidget(this.progressIndicatorModel);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 20,),
      child: Container(
        height: 50,
        width: (Responsive.isDesktop(context))? 600.w : 1000.w,
        child: Row(
          children: [
            // SizedBox(width: 0.w,),
            Container(
              height: 50,
              width: (Responsive.isDesktop(context))? 600.w : 1000.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(progressIndicatorModel.title, style: TextStyle(fontSize: 16, color: Colors.deepPurple[400])),
                      Text("${progressIndicatorModel.percentage}"+"%", style: TextStyle(fontSize: 16, color: Colors.deepPurple[400])),
                    ],
                  ),
                  StepProgressIndicator(
                    totalSteps: 100,
                    currentStep: progressIndicatorModel.percentage.toInt(),
                    size: 8,
                    padding: 0,
                    selectedColor: Colors.deepPurple.shade400,
                    unselectedColor: Colors.white,
                    roundedEdges: Radius.circular(10),
                    selectedGradientColor: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.deepPurple.shade400, Colors.deepPurple.shade400],
                    ),
                    unselectedGradientColor: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.white, Colors.white],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
