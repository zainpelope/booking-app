import 'package:booking_app/config/theme/app_color.dart';
import 'package:booking_app/config/theme/app_dimen.dart';
import 'package:booking_app/data/src/img_string.dart';
import 'package:booking_app/extension/double_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/app_font.dart';

class OtherMatches extends StatelessWidget {
  const OtherMatches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _header(),
          _roomiesList(context),
        ],
      ),
    );
  }

  Widget _roomiesList(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (c, i) => _roomiesItem(context),
        itemCount: 3,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget _roomiesItem(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: AppDimen.w16, top: AppDimen.h24, bottom: AppDimen.h16),
      padding: EdgeInsets.only(
          right: AppDimen.w16,
          left: AppDimen.w16,
          bottom: AppDimen.h16,
          top: 49.h),
      width: (MediaQuery.of(context).size.width / 2) - AppDimen.w50,
      decoration: BoxDecoration(
        color: AppColor.ink06,
        borderRadius: BorderRadius.circular(AppDimen.w16),
      ),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(ImgString.plants1),
          ),
          37.0.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Zain",
                style: AppFont.pragraphLargeBold,
              ),
              Text(
                "\$500",
                style: AppFont.pragraphSmall,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _avatar() {
    return SizedBox(
      height: 56.w,
      width: 56.w,
      child: Stack(
        children: [
          Center(
            child: CircleAvatar(
              radius: 28.w,
              backgroundColor: AppColor.ink03,
            ),
          ),
          Center(
            child: CircleAvatar(
              radius: 26.w,
              backgroundColor: AppColor.ink06,
              backgroundImage: AssetImage(ImgString.avatar),
            ),
          )
        ],
      ),
    );
  }

  Widget _header() {
    return Padding(
      padding: EdgeInsets.only(
        left: AppDimen.w16,
        right: AppDimen.w16,
        top: AppDimen.h24,
      ),
      child: Text(
        "Other Matches",
        style: AppFont.h3,
      ),
    );
  }
}
