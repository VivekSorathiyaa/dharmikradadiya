import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:Dharmik/components/colors.dart';
import 'package:Dharmik/pages/splash_screen.dart';

class DharmikApp extends StatefulWidget {
  const DharmikApp({Key? key}) : super(key: key);

  @override
  _DharmikAppState createState() => _DharmikAppState();
}

final GlobalKey<NavigatorState> navigatorKey =
    GlobalKey<NavigatorState>(debugLabel: "navigator");

class _DharmikAppState extends State<DharmikApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.white));
    return GetMaterialApp(
      navigatorKey: navigatorKey,
      title: 'Dharmik',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: appBackgroundColor,
        // scaffoldBackgroundColor: primaryBlack,
        primaryColor: appColor,
        primarySwatch: Colors.pink,
        fontFamily: 'NotoSansGujarati',
        hintColor: primaryBlack,
        // primaryColor: primaryWhite,
        iconTheme: const IconThemeData(color: primaryBlack, size: 24),
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
  }
}
