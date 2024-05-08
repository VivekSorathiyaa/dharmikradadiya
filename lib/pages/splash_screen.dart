import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:joyn/app.dart';
import 'package:joyn/components/app_asset.dart';
import 'package:joyn/components/colors.dart';
import 'package:joyn/utils/app_constants.dart';
import 'package:joyn/utils/network_dio/network_dio.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

String uid = dataStorages.read('userid');

class _SplashScreenState extends State<SplashScreen> {
  static final dataStorage = GetStorage();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) async {
      getLocation();
    });
  }

  startTime() async {
    return Timer(
      const Duration(milliseconds: 1500),
      () {
        Get.offAll(
          () => const SplashScreen(),
        );
      },
    );
  }

  void navigationPage() async {
    bool? status = dataStorage.read("isLoggedIn");
    String? token = dataStorage.read('token');
    if (token == null) {
      // Get.offAll(MainHomeScreen(
      //   initialPageIndex: 0,
      // ));
    } else if (token.isNotEmpty && status == true) {
      // Get.offAll(MainHomeScreen(
      //   initialPageIndex: 0,
      // ));

    } else {
      // Get.to(LoginScreen());
    }
  }

  getLocation() async {
    NetworkDioHttp.setDynamicHeader(endPoint: ApiAppConstants.apiEndPoint);
    // if (dataStorage.read('latitude') == null &&
    //     dataStorage.read('longitude') == null) {
    //   final Position position = await CommonRepository.getCurrentLocation();

    //   dataStorage.write('latitude', position.latitude);
    //   dataStorage.write('longitude', position.longitude);
    // }
    // debugPrint(
    //     '\x1b[97m Lat-Lng = ${dataStorage.read('latitude')}-${dataStorage.read('longitude')}');
    // startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: redColor,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: redColor,
        body: Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Center(
            child: SvgPicture.asset(
              AppAsset.logo,
              height: 100,
            ),
          ),
          // child: Column(
          //   children: [
          //     Expanded(
          //       flex: 2,
          //       child: Center(
          //         child: SvgPicture.asset(
          //           AppAsset.logo,
          //           height: 50,
          //         ),
          //       ),
          //     ),
          //     Expanded(
          //       child: Align(
          //         alignment: Alignment.bottomCenter,
          //         child: Text(
          //           'Copyright © 2008-2021 Zois',
          //           textAlign: TextAlign.center,
          //           style: AppTextStyle.normalRegular12
          //               .copyWith(color: whiteColor.withOpacity(0.6)),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}
