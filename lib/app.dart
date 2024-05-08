import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:joyn/components/colors.dart';
import 'package:joyn/pages/splash_screen.dart';

final dataStorages = GetStorage();

class JoynApp extends StatefulWidget {
  const JoynApp({Key? key}) : super(key: key);

  @override
  _JoynAppState createState() => _JoynAppState();
}

final GlobalKey<NavigatorState> navigatorKey =
    GlobalKey<NavigatorState>(debugLabel: "navigator");

class _JoynAppState extends State<JoynApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.white));
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          navigatorKey: navigatorKey,
          title: 'Erixie',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            backgroundColor: appBackgroundColor,
            // scaffoldBackgroundColor: primaryBlack,
            primaryColor: Colors.red,
            primarySwatch: Colors.red,
            fontFamily: 'Urbanist',
            hintColor: primaryWhite,
            // primaryColor: primaryWhite,
            iconTheme: const IconThemeData(color: primaryWhite, size: 24),
            // appBarTheme: const AppBarTheme(
            //   elevation: 1,
            //   // ignore: deprecated_member_use
            //   textTheme: TextTheme(headline6: TextStyle(color: Colors.white)),
            //   backgroundColor: primaryWhite,
            //   foregroundColor: primaryWhite,
            //   centerTitle: true,
            // )
          ),
          home: SplashScreen(),
        );
      },
    );
  }
}
