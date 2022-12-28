
import 'package:booking_app/extension/double_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/app_dimen.dart';
import '../../../../../config/theme/app_font.dart';
import '../../../../../data/src/img_string.dart';

class FavoriteHeader extends StatelessWidget {
  const FavoriteHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(AppDimen.w16),
      padding: EdgeInsets.all(AppDimen.w8),
      height: 163.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        children: [
          Image.asset(ImgString.plants3),
          24.0.width,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Itally",
                  style: AppFont.paragraphSmall,
                ),
                8.0.height,
                Text(
                  "Meet new roomies and find new adventures.",
                  style: AppFont.h4.copyWith(
                    height: 1.2.sp,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}