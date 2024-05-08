import 'package:Dharmik/components/app_asset.dart';
import 'package:Dharmik/components/colors.dart';
import 'package:Dharmik/components/static_decoration.dart';
import 'package:Dharmik/model/category_model.dart';
import 'package:Dharmik/widget/shodow_container_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../components/app_text_style.dart';

class SubCategoryScreen extends StatefulWidget {
  final CategoryModel data;
  const SubCategoryScreen({Key? key, required this.data}) : super(key: key);

  @override
  State<SubCategoryScreen> createState() => _SubCategoryScreenState();
}

class _SubCategoryScreenState extends State<SubCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: appColor,
        titleSpacing: 0,
        iconTheme: IconThemeData(color: primaryWhite),
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: Text(
          widget.data.categoryName,
          style: AppTextStyle.normalBold18.copyWith(color: primaryWhite),
        ),
      ),
      body: SizedBox.expand(
        child: Stack(
          children: [
            Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Opacity(
                      opacity: 0.5, // Set the opacity here (0.0 - 1.0)

                      child: Column(
                        children: [
                          Image.asset(AppAsset.wing),
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
                      )),
                )),
            ListView(
              physics: BouncingScrollPhysics(),
              children: [
                ...List.generate(widget.data.documentName.length, (index) {
                  var data = widget.data.documentName[index];
                  return ShadowContainerWidget(
                      widget: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(CupertinoIcons.hand_point_right),
                      width05,
                      Expanded(
                        child: Text(
                          data.toString(),
                          style: AppTextStyle.normalBold20,
                        ),
                      ),
                    ],
                  ));
                })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
