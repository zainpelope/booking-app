import 'package:booking/utils/extension/double_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../config/theme/app_color.dart';
import '../../../../../../config/theme/app_dimen.dart';
import '../../../../../../config/theme/app_font.dart';
import '../../../../../../data/src/img_string.dart';

class DetailButton extends StatelessWidget {
  const DetailButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        height: 72,
        margin: EdgeInsets.only(
          bottom: AppDimen.h16,
          left: AppDimen.w16,
          right: AppDimen.w16,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: AppDimen.w8,
          vertical: AppDimen.h8,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColor.accentPink,
          borderRadius: BorderRadius.circular(
            AppDimen.w8,
          ),
        ),
        child: Row(
          children: [
            _avatar(),
            8.0.width,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Title",
                    style: AppFont.paragraphMediumBold,
                  ),
                  Text(
                    "Label",
                    style: AppFont.paragraphSmall.copyWith(
                      color: AppColor.ink02,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                const Icon(
                  Icons.favorite,
                  color: AppColor.ink02,
                ),
                12.0.width,
                const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColor.ink02,
                ),
                19.0.width,
                const Icon(
                  Icons.more_vert,
                  color: AppColor.ink02,
                ),
              ],
            )
          ],
        ),
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
              radius: 208.w,
              backgroundColor: AppColor.ink03,
            ),
          ),
          Center(
            child: CircleAvatar(
              backgroundColor: AppColor.ink06,
              radius: 26.w,
              backgroundImage: const AssetImage(
                ImgString.avatar,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
