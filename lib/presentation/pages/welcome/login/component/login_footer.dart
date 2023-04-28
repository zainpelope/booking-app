import 'package:booking/config/config.dart';
import 'package:booking/utils/extension/double_extension.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../config/theme/app_font.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Forgot Password',
                style: AppFont.paragraphSmall.copyWith(
                  color: AppColor.ink02,
                ),
              ),
              TextSpan(
                text: ' Get New',
                style: AppFont.paragraphSmallBold,
              ),
            ],
          ),
        ),
        8.0.height,
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Do you have an account?',
                style: AppFont.paragraphSmall.copyWith(
                  color: AppColor.ink02,
                ),
              ),
              TextSpan(
                text: ' Create New',
                style: AppFont.paragraphSmallBold,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
