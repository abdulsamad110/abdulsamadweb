import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:techorrawebsite/model/clientsreviewmodel.dart';
import 'package:techorrawebsite/model/companymodel.dart';
import 'package:techorrawebsite/model/experince_model.dart';
import 'package:techorrawebsite/model/itsolutionmodel.dart';
import 'package:techorrawebsite/model/mapmodel.dart';
import 'package:techorrawebsite/model/portfoliomodel.dart';
import 'package:techorrawebsite/model/progressindicatormodel.dart';
// import 'package:techorrawebsite/model/skill_model.dart';
import 'package:techorrawebsite/model/staticdata.dart';
import 'package:techorrawebsite/model/teammembermodel.dart';
import 'package:techorrawebsite/model/tools_model.dart';
import 'package:techorrawebsite/model/user_model.dart';
import 'package:techorrawebsite/view/about_us_screen.dart';
import 'package:techorrawebsite/view/contact_us.dart';
import 'package:techorrawebsite/view/cover_screen.dart';
import 'package:techorrawebsite/view/our_services.dart';
import 'package:techorrawebsite/view/ourteam.dart';
import 'package:techorrawebsite/view/portfolio.dart';
import 'package:techorrawebsite/view/testimonials_screen.dart';

class HomeScreenController extends GetxController {
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  int hoveringIndex = -1;
  int selectedButtonIndex;
  bool indexClicked = false;
  int scrollingTo = 0;
  listen() {
    itemPositionsListener.itemPositions.addListener(() {
      int check = itemPositionsListener.itemPositions.value.first.index;
      if (indexClicked && scrollingTo == check) {
        indexClicked = false;
      }
      // if(check==selectedIndex) {
      if (!indexClicked) {
        selectedIndex = check;
        selectedIndexDrawer = check;
      }
      update(['bar']);
      // }
      // selectedIndex = check;
      // selectedIndexDrawer = check;
      // update();

      //print(check);
    });
  }

  changeIndex(int index) async {
    indexClicked = true;
    scrollingTo = index;
    selectedIndex = index;
    selectedIndexDrawer = index;
    itemScrollController.scrollTo(
        index: index,
        duration: Duration(seconds: 1),
        curve: Curves.easeInOutCubic);
    update(['bar']);

    // await Future.delayed(Duration(seconds: 3));
    // indexClicked=false;
  }

  List listofTab = [
    "Home",
    "About",
    "Experience",
    "Tools",
    "Services",
    "Portfolio",
    "Connect",
  ];
  List listWhyChooseUs = [
    "Remote It Assistance",
    "Solving IT Problems",
    "Practice IT Management",
    "IT Security Services",
    "Managed IT Service",
    "Cloud Services"
  ];
  List listWhyTrustUs = [
    "Flutter/Dart",
    "Django",
    "Node JS",
    "HTML/CSS/JS",
    "Firebase",
    "Android Native (Java)",
    "ASP.NET Core",
    "UI/UX Design",
  ];
  // List<SkillModel> skillsList = [];
  List<TeamMemberModel> listTeamMember = [];
  int selectedIndex = 0;
  int selectedIndexDrawer = 0;
  List<Widget> allpages = [
    CoverScreen(),
    AboutUsScreen(),
    TestimonialScreen(),
    OurTeam(),
    OurServicesScreen(),
    Portfolio(),
    ContactUs()
  ];
  gotoHome() {
    //Scrollable.ensureVisible(homeKey.currentContext);
    itemScrollController.scrollTo(
        index: 0, duration: Duration(seconds: 2), curve: Curves.easeInOutCubic);
    update(['bar']);
  }

  gotoAboutUs() {
    //listen();
    /*Scrollable.ensureVisible(aboutUsKey.currentContext,);*/
    itemScrollController.scrollTo(
        index: 1, duration: Duration(seconds: 2), curve: Curves.easeInOutCubic);
    update(['bar']);
  }

  gotoTestimonial() {
    //Scrollable.ensureVisible(testimonialKey.currentContext,);
    itemScrollController.scrollTo(
        index: 2, duration: Duration(seconds: 2), curve: Curves.easeInOutCubic);
    update(['bar']);
  }

  gotoTeamMember() {
    //Scrollable.ensureVisible(testimonialKey.currentContext,);
    itemScrollController.scrollTo(
        index: 3, duration: Duration(seconds: 2), curve: Curves.easeInOutCubic);
    update(['bar']);
  }

  gotoOurService() {
    //Scrollable.ensureVisible(ourServicesKey.currentContext);
    itemScrollController.scrollTo(
        index: 4, duration: Duration(seconds: 2), curve: Curves.easeInOutCubic);
    update(['bar']);
  }

  gotoPortfolio() {
    //Scrollable.ensureVisible(portfolioKey.currentContext,);
    itemScrollController.scrollTo(
        index: 5, duration: Duration(seconds: 2), curve: Curves.easeInOutCubic);
    update(['bar']);
  }

  gotoContactUs() {
    //Scrollable.ensureVisible(contactUsKey.currentContext,);
    itemScrollController.scrollTo(
        index: 6, duration: Duration(seconds: 2), curve: Curves.easeInOutCubic);
    update(['bar']);
  }

  final scrollDirection = Axis.vertical;
  AutoScrollController controller = AutoScrollController();
  BuildContext context;
  final size = Get.size;
  void homeScreenFunction() {
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: scrollDirection);
  }

  double firstScreenbtnHoverValue = 0;
  double firstScreenbtn2HoverValue = 0;
  int hoveringIndexWhyChooseUs = -1;
  int hoveringIndexWhyTrustUs = -1;
  int hoveringIndexTeamMember = -1;
  bool testimonialStartStop = true;
  bool portfolioStartStop = true;

  List<ClientReviewModel> clientsReview = [];
  List<PortfolioModel> portfolios = [];
  List<ProgressIndicatorModel> progressIndicatorList = [];
  CompanyModel companyModel;
  StaticData staticData;
  MapModel mapModel;
  List<ItSolutionModel> itSolutionList = [];

  //New Code @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  User userModel;
  Experience experienceModel;
  List<Experience> experiences = [];
  List<ToolsModel> toolsList = [];

  //OLD CODE @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  getCollectionsClientReview() async {
    QuerySnapshot snap =
        await FirebaseFirestore.instance.collection('client').get();
    clientsReview.clear();
    snap.docs.forEach((document) {
      ClientReviewModel crm =
          new ClientReviewModel.fromDocumentSnapshot(document);
      clientsReview.add(crm);
    });
    update(['testimonial']);
  }

  getCollectionsTeamMember() async {
    QuerySnapshot snap =
        await FirebaseFirestore.instance.collection('teamMember').get();
    listTeamMember.clear();
    snap.docs.forEach((document) {
      TeamMemberModel tmm = new TeamMemberModel.fromDocumentSnapshot(document);
      listTeamMember.add(tmm);
    });
    update(['teamMember']);
  }

  getCollectionsExperience() async {
    QuerySnapshot snap =
        await FirebaseFirestore.instance.collection('experience').get();
    experiences.clear();
    snap.docs.forEach((document) {
      Experience tmm = new Experience.fromDocumentSnapShot(document);
      experiences.add(tmm);
    });
    update(['testimonial']);
  }

  getCollectionsPortfolio() async {
    QuerySnapshot snap =
        await FirebaseFirestore.instance.collection('portfolio').get();
    portfolios.clear();
    snap.docs.forEach((document) {
      PortfolioModel pm = new PortfolioModel.fromDocumentSnapshot(document);
      portfolios.add(pm);
    });
    update(['portfolio']);
  }

  getCollectionsProgressIndicator() async {
    QuerySnapshot snap =
        await FirebaseFirestore.instance.collection('progressIndicator').get();
    progressIndicatorList.clear();
    snap.docs.forEach((document) {
      ProgressIndicatorModel pim =
          new ProgressIndicatorModel.fromDocumentSnapshot(document);
      progressIndicatorList.add(pim);
    });
    update(['aboutPage']);
  }

  getCollectionOfUserModel() async {
    QuerySnapshot snap =
        await FirebaseFirestore.instance.collection('user').get();
    snap.docs.forEach((document) {
      userModel = User.fromDocumentSnapshot(document);
    });
    update(['homepage']);
  }

  getCollectionToolsModel() async {
    QuerySnapshot snap =
        await FirebaseFirestore.instance.collection('tools').get();
    toolsList.clear();
    snap.docs.forEach((document) {
      ToolsModel tmm = new ToolsModel.fromDocumentSnapShot(document);
      toolsList.add(tmm);
    });
    update(['teamMember']);
  }

  getCollectionsCompanyModel() async {
    QuerySnapshot snap =
        await FirebaseFirestore.instance.collection('company').get();
    snap.docs.forEach((document) {
      companyModel = CompanyModel.fromDocumentSnapShot(document);
    });
    update(['homepage']);
  }

  getCollectionsStaticData() async {
    QuerySnapshot snap =
        await FirebaseFirestore.instance.collection('staticData').get();
    snap.docs.forEach((document) {
      staticData = StaticData.fromDocumentSnapshot(document);
    });
    update(['aboutPage']);
  }

  getCollectionsITSolution() async {
    QuerySnapshot snap =
        await FirebaseFirestore.instance.collection('itSolution').get();
    itSolutionList.clear();
    snap.docs.forEach((document) {
      ItSolutionModel its = ItSolutionModel.fromDocumentSnapshot(document);
      itSolutionList.add(its);
    });
    update(['ITSolutions']);
  }

  getCollectionsMapModel() async {
    QuerySnapshot snap =
        await FirebaseFirestore.instance.collection('map').get();
    snap.docs.forEach((document) {
      mapModel = MapModel.fromDocumentSnapShot(document);
    });
    update(['homepage']);
  }
}
