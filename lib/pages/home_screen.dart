import 'package:Dharmik/components/app_asset.dart';
import 'package:Dharmik/components/app_text_style.dart';
import 'package:Dharmik/components/colors.dart';
import 'package:Dharmik/components/static_decoration.dart';
import 'package:Dharmik/main.dart';
import 'package:Dharmik/pages/sub_category_screen.dart';
import 'package:Dharmik/widget/shodow_container_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> inquiries = ["Inquiry 1", "Inquiry 2", "Inquiry 3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: appColor,
        titleSpacing: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                color: primaryWhite,
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(AppAsset.logo), fit: BoxFit.cover)),
          ),
        ),
        title: Text(
          "મુરલીધર કન્સલ્ટન્સી - જન સુવિધા કેન્દ્ર",
          style: AppTextStyle.normalBold18.copyWith(color: primaryWhite),
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: mainDatabase.length,
              itemBuilder: (context, index) {
                var data = mainDatabase[index];
                var count = index + 1;
                return InkWell(
                  onTap: () {
                    Get.to(() => SubCategoryScreen(
                          data: data,
                        ));
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 15, left: 15, right: 15),
                    child: ShadowContainerWidget(
                      padding: 0,
                      widget: Row(
                        children: [
                          ShadowContainerWidget(
                            color: appColor,
                            padding: 0,
                            customRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)),
                            widget: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                count.toString(),
                                style: AppTextStyle.normalBold16
                                    .copyWith(color: primaryWhite),
                              ),
                            ),
                          ),
                          width10,
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Text(
                                data.categoryName,
                                style: AppTextStyle.normalBold18
                                    .copyWith(color: primaryBlack),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
          height20,
          height20,
        ],
      ),
    );
  }
}
