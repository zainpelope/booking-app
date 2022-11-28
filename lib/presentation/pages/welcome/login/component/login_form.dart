import 'package:booking_app/config/config.dart';
import 'package:booking_app/utils/extension.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../config/theme/app_dimen.dart';
import '../../../../widget/app_input_text.dart';
import '../../../../widget/primary_button.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login',
            style: AppFont.h3,
          ),
          16.0.height,
          const AppInputText(
            label: 'Email',
          ),
          16.0.height,
          const AppInputText(
            label: 'Password',
          ),
          16.0.height,
          PrimaryButton(onPressed: () {  }, text: 'Login',width: double.infinity,
          type: PrimaryButtonType.type3,)
        ],
      ),
    );
  }
}
