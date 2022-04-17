import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:techorrawebsite/controller/home_screen_controller.dart';
import 'package:techorrawebsite/view/widgets/teammembercard.dart';

import '../responsive.dart';

class OurTeam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
        id: 'teamMember',
        builder: (homeScreenController) {
          return Container(
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
                    'FAMILIAR TOOLS',
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
                            i < homeScreenController.toolsList.length;
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
                            child: TeamMemberCard(
                                homeScreenController.toolsList[i],
                                homeScreenController.hoveringIndexTeamMember ==
                                    i),
                            //////////////////////////////////////////////
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
