import 'package:booking/config/theme/app_dimen.dart';
import 'package:booking/presentation/pages/welcome/login/view.dart';
import 'package:booking/presentation/widget/secondary_button.dart';
import 'package:booking/utils/extension/extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widget/primary_button.dart';
import '../view.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w16),
      child: Row(
        children: [
          Expanded(
            child: PrimaryButton(
              onPressed: () {},
              text: 'Explore',
              type: PrimaryButtonType.type1,

            ),
          ),
          16.0.width,
          Expanded(
            child: SecondaryButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
              },
              text: 'Login',
            ),
          ),
        ],
      ),
    );
  }
}
