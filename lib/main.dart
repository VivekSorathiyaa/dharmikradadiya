// import 'package:firebase_core/firebase_core.dart';

import 'package:Dharmik/model/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:Dharmik/app.dart';
import 'package:Dharmik/utils/app_constants.dart';
import 'package:Dharmik/utils/network_dio/network_dio.dart';

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
  runApp(const DharmikApp());
}

List<CategoryModel> mainDatabase = [
  CategoryModel(
      categoryName: 'આધાર કાર્ડ મેળવા માટે ડોક્યુમેંટ્સ',
      documentName: [
        'પાન કાર્ડ',
        'ચૂંટણી કાર્ડ',
        'ડ્રાઇવિંગ લાઈસસ્સ',
        'પાસપોર્ટ/ સ્કૂલ લિવિંગ સર્ટી',
        'લાઇટ બિલ',
        'ગેસ બિલ',
        'વેરાબિલ',
      ]),
  CategoryModel(
      categoryName: 'ચૂંટણી કાર્ડ મેળવા માટે ડોક્યુમેંટ્સ',
      documentName: [
        'પાન કાર્ડ',
        'ચૂંટણી કાર્ડ',
        'ડ્રાઇવિંગ લાઈસસ્સ',
        'પાસપોર્ટ/ સ્કૂલ લિવિંગ સર્ટી',
        'લાઇટ બિલ',
        'ગેસ બિલ',
        'વેરાબિલ',
      ]),
  CategoryModel(
      categoryName: 'પાન કાર્ડ મેળવા માટે ડોક્યુમેંટ્સ',
      documentName: [
        'આધાર કાર્ડ',
        'બે પાસપોર્ટ સાઇઝ ફોટો',
        'આધાર કાર્ડ',
        'જુનુ પાન કાર્ડ',
        'બે પાસપોર્ટ સાઇઝ ફોટો',
      ]),
  CategoryModel(
      categoryName: 'પાસપોર્ટ મેળવા માટે ડોક્યુમેંટ્સ',
      documentName: [
        'પાન કાર્ડ',
        'ચૂંટણી કાર્ડ',
        'ડ્રાઇવિંગ લાઈસસ્સ',
        'સ્કૂલ લિવિંગ સર્ટી/જેન્મ નો દાખલો',
        'જૂનો પાસપોર્ટ હોય તો તે',
        'લાઇટ બિલ / બેન્ક પાસબૂક',
        'ગેસ બિલ/',
        'વેરાબિલ',
      ]),
  CategoryModel(
      categoryName: 'રેશન કાર્ડ મેળવા માટે ડોક્યુમેંટ્સ',
      documentName: [
        'ઘર ના બધા મેમ્બર ના આધાર કાર્ડ',
        'લાઇટ બિલ છેલ્લુ',
        'ચૂંટણી કાર્ડ મેન મેમ્બર નુ',
        'બેન્ક પાસબૂક મેન મેમ્બર ની',
        'બે પાસપોર્ટ સાઇઝ ફોટો',
        'નામ કમી ના દાખલા જો હોય તો',
        'જુનુ રેશન કાર્ડ ઓરિજન',
        'પાંચ વર્ષ નીચે નાના જન્મ ના દાખલો',
      ]),
  CategoryModel(categoryName: 'આયુષ્માન કાર્ડ માટે', documentName: [
    'ઘર ના બધા મેમ્બર ના આધાર કાર્ડ',
    'રેશનકાર્ડ',
    'આવક નો દાખલો',
  ]),
  CategoryModel(categoryName: 'ઉધ્યોગ આધાર(MSME)', documentName: [
    'આધાર કાર્ડ',
    'બેન્ક પાસબૂક',
  ]),
  CategoryModel(categoryName: 'મેરેજ સર્ટિફિકેટ', documentName: [
    'વર કન્યા ના આધાર કાર્ડ',
    'વર કન્યા ના એલ.સી અથવા જન્મ નો દાખલો',
    'વર કન્યા ની લગ્ન કંકોત્રી',
    'વર કન્યા ના બે-બે- ફોટા',
    'વર કન્યા ના માતા-પિતા ના આધાર કાર્ડ (ઘર ના લાઇટ બિલ)',
    'વર કન્યા લગ્ન નો ફોટો(કપલ માં)',
    'બે સાક્ષી ના આધાર કાર્ડ અને ફોટો',
  ]),
  CategoryModel(categoryName: 'કુવરબાઈ મામેરુ યોજના', documentName: [
    'વર કન્યા ના આધાર કાર્ડ',
    'કન્યાની બેંક પાસબૂક/ રદ કરેલ ચેક',
    'મેરેજસર્ટી',
    'કન્યાના પિતાનો આવકનો દાખલો',
    'કન્યાના પિતા નું આધાર કાર્ડ',
    'કન્યાનો પાસપોર્ટ ફોટો અને લગ્ન નો ફોટો',
  ]),
  CategoryModel(categoryName: 'વિધવા સહાય માટે', documentName: [
    'આવક નો દાખલો',
    'પતિનો મરણ દાખલો',
    'અરજદાર અને તેના સંતાનો ના આધારકાર્ડ અને જન્મદાખલા',
    'રેશનકાર્ડ સુરત નું ફરજિયાત',
    'લાઇટબિલ / ભાડાકરાર',
    'બૅન્ક પાસબૂક',
  ]),
  CategoryModel(categoryName: 'સિલાઇ મશીન ફોર્મ', documentName: [
    'આધાર કાર્ડ',
    'રેશન કાર્ડ',
    'બેંક પાસબુક',
    'મેરેજ થયા હોય તો પતિ નું આધાર કાર્ડ',
    'જે વ્યક્તિ નું ફોર્મ ભરવાનું હોય ઍ બેન ને રુબરુ ઓફીસ એ આવવાનું રહેશે',
  ]),
  CategoryModel(categoryName: 'લાઇસન્સ માટે', documentName: [
    'આધાર કાર્ડ',
    'પાસપોર્ટ સાઈઝ ફોટો',
    'સહી',
    'મોબાઇલ નંબર',
  ]),
  CategoryModel(categoryName: 'ફુડ લાઇસન્સ માટે', documentName: [
    'આધાર કાર્ડ',
    'પાસપોર્ટ સાઈઝ ફોટો',
    'બેંક પાસબુક',
    'પેઢી નામ',
  ]),
  CategoryModel(categoryName: 'ભાડા કરાર માટે', documentName: [
    'આધાર કાર્ડ મકાન મકાન માલિક & ભાડુઆત',
    'લાઈટ બીલ',
    'વેરાબિલ',
    'પાસપોર્ટ સાઈઝ ફોટો બને નાં',
  ]),
];
