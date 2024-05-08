import 'dart:async';

import 'package:Dharmik/components/app_text_style.dart';
import 'package:Dharmik/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:Dharmik/app.dart';
import 'package:Dharmik/components/app_asset.dart';
import 'package:Dharmik/components/colors.dart';
import 'package:Dharmik/utils/app_constants.dart';
import 'package:Dharmik/utils/network_dio/network_dio.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  static final dataStorage = GetStorage();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) async {
      startTime();
    });
  }

  startTime() async {
    return Timer(
      const Duration(seconds: 3),
      () {
        Get.offAll(
          () => const HomeScreen(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // backgroundColor: appColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Spacer(),
              Column(
                mainAxisSize: MainAxisSize.min,
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppAsset.logo),
                  Text(
                    "મુરલીધર કન્સલ્ટન્સી",
                    style: AppTextStyle.normalBold32.copyWith(color: blue),
                  ),
                  Text(
                    "જન સુવિધા કેન્દ્ર",
                    style: AppTextStyle.regularBold
                        .copyWith(color: appColor, fontSize: 48),
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      "ધાર્મિક રાદડીયા",
                      style: AppTextStyle.normalBold14.copyWith(
                        color: appColor,
                      ),
                    ),
                    Text(
                      "Mo. 78610 32281",
                      style: AppTextStyle.normalRegular16.copyWith(
                        color: blue,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
