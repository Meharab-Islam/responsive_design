import 'dart:io';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_design/views/mobile_Screen.dart';
import 'package:responsive_design/views/web/small_web_screen.dart';
import 'package:responsive_design/views/web/web_screens.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 500) {
            return MobileScreen();
          } else if (constraints.maxWidth < 780) {
            return SmallWebScreen();
          } else {
            return WebScreen();
          }
        },
      ),
    );
  }
}
