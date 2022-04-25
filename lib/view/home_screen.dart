import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:techorrawebsite/controller/home_screen_controller.dart';
import 'package:techorrawebsite/view/widgets/drawerclass.dart';
import 'package:techorrawebsite/view/widgets/menu.dart';

import '../responsive.dart';

class HomeScreen extends StatelessWidget {
  HomeScreenController hController = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    hController.listen();
    hController.getCollectionOfUserModel();
    hController.getCollectionsCompanyModel();
    hController.getCollectionsStaticData();
    hController.getCollectionsITSolution();
    hController.getCollectionsClientReview();
    // hController.getCollectionsTeamMember();
    hController.getCollectionToolsModel();
    hController.getCollectionEducationModel();
    // hController.getSkillsList();
    hController.getCollectionsExperience();
    hController.getCollectionsPortfolio();
    hController.getCollectionsProgressIndicator();

    return Scaffold(
      backgroundColor: Color(0xffffffff),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.indigo.shade900, Colors.lightBlue.shade900],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          if (Responsive.isDesktop(context))
            menuBar(controller: hController.controller),
        ],
      ),
      drawer: (!Responsive.isDesktop(context)) ? DrawerClass() : null,
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: ScrollablePositionedList.builder(
          itemCount: 7,
          itemBuilder: (context, index) => hController.allpages[index],
          itemScrollController: hController.itemScrollController,
          itemPositionsListener: hController.itemPositionsListener,
        ),
      ),
    );
  }
}
