// import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:joyn/app.dart';
import 'package:joyn/utils/app_constants.dart';
import 'package:joyn/utils/network_dio/network_dio.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  // await Firebase.initializeApp();
  NetworkDioHttp.setDynamicHeader(endPoint: ApiAppConstants.apiEndPoint);

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
      systemStatusBarContrastEnforced: true,
    ),
  );
  runApp(const JoynApp());
}
