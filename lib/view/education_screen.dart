import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:techorrawebsite/controller/home_screen_controller.dart';
import 'package:techorrawebsite/view/ourteam.dart';
import 'package:techorrawebsite/view/widgets/education_card.dart';
import 'package:techorrawebsite/view/widgets/teammembercard.dart';

class EducationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
        id: 'teamMember',
        builder: (homeScreenController) {
          return AutoScrollTag(
            key: ValueKey(3),
            controller: homeScreenController.controller,
            index: 3,
            child: Column(
              children: [
                Container(
                  //height: MediaQuery.of(context).size.height*0.9,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 60),
                        child: Center(
                            child: Text(
                          'EDUCATION',
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              for (int i = 0;
                                  i < homeScreenController.educationList.length;
                                  i++)
                                InkWell(
                                  onTap: () {},
                                  // onHover: (isHovering) {
                                  //   if (isHovering) {
                                  //     homeScreenController.hoveringIndexTeamMember =
                                  //         i;
                                  //     //The mouse is hovering.
                                  //   } else {
                                  //     homeScreenController.hoveringIndexTeamMember =
                                  //         -1;
                                  //     //The mouse is no longer hovering.
                                  //   }
                                  //   homeScreenController.update(['teamMember']);
                                  // },
                                  //////////////////////////////////////////////
                                  child: EducationCard(
                                      homeScreenController.educationList[i],
                                      homeScreenController
                                              .hoveringIndexTeamMember ==
                                          i),
                                  //////////////////////////////////////////////
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                OurTeam(),
              ],
            ),
          );
        });
  }
}
