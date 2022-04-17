import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:techorrawebsite/view/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await FirebaseCoreWeb().initializeApp();
  //final defaultApp = Firebase.app();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(1366, 768),
        builder: () => GetMaterialApp(
            title: "Abdul Samad - Your Tech Companion",
            debugShowCheckedModeBanner: false,
            home: HomeScreen()));
  }
}
