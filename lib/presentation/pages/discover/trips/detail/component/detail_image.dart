import 'package:booking/utils/extension/double_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../config/theme/app_color.dart';
import '../../../../../../config/theme/app_dimen.dart';
import '../../../../../../data/src/img_string.dart';


class DetailImage extends StatelessWidget {
  const DetailImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        AppDimen.w8,
      ),
      margin: EdgeInsets.only(
        top: AppDimen.h68,
        left: AppDimen.w16,
        right: AppDimen.w16,
        bottom: AppDimen.h24,
      ),
      height: 280.0.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.accentPink,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Image.asset(
        ImgString.livingRoom,
      ),
    );
  }
}
