import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:get/get.dart';
import 'package:techorrawebsite/controller/home_screen_controller.dart';
import 'package:techorrawebsite/view/widgets/ourservicecontainer.dart';

import '../responsive.dart';


class OurServicesScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
        id: 'ITSolutions',
        builder: (homeScreenController) {
        return AutoScrollTag(
            key: ValueKey(3),
            controller: homeScreenController.controller,
            index: 3,
            child: Container(
              //height: (Responsive.isDesktop(context))? MediaQuery.of(context).size.height : MediaQuery.of(context).size.height*1.4,
              width: MediaQuery.of(context).size.width*0.92,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 60),
                    child: Center(child: Text('WHAT WE PROVIDE', style: TextStyle(fontSize: 22, color: Colors.deepOrange, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Center(child: Text('IT Solutions', style: TextStyle(fontSize: (Responsive.isDesktop(context))? 36 : 28, color: Colors.black, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Wrap(
                      children: [
                        for(int i=0; i<homeScreenController.itSolutionList.length; i++)
                          OurServiceContainer(homeScreenController.itSolutionList[i]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
        );
      }
    );
  }
}