import 'package:booking/data/src/img_string.dart';
import 'package:booking/utils/extension/double_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/app_color.dart';
import '../../../../../config/theme/app_dimen.dart';
import '../../../../../config/theme/app_font.dart';

class FavoriteHeader extends StatelessWidget {
  const FavoriteHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(AppDimen.w16),
      padding: EdgeInsets.all(AppDimen.w8),
      height: 163.h,
      decoration: BoxDecoration(
        color: AppColor.ink06,
        borderRadius: BorderRadius.circular(16),
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
                  "Italy",
                  style: AppFont.paragraphSmall,
                ),
                8.0.height,
                Text(
                  "Meet new roomies and find new adventures.",
                  style: AppFont.h4.copyWith(
                    height: 1.1.sp,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
