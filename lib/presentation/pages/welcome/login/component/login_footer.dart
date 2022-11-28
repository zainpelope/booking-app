import 'package:booking_app/utils/extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/app_color.dart';
import '../../../../../config/theme/app_font.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Forgot Password ',
                style: AppFont.pragraphSmall.copyWith(color: AppColor.ink02),),
              TextSpan(text: ' Forgot', style: AppFont.pragraphSmallBold)
            ],
          ),
        ),
        8.0.height,
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                  text: 'Don\'t have an account? ',
                  style: AppFont.pragraphSmall.copyWith(color: AppColor.ink02),),
              TextSpan(text: ' Create New', style: AppFont.pragraphSmallBold)
            ],
          ),
        ),
      ],
    );
  }
}
