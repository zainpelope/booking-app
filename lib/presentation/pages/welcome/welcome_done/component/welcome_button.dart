
import 'package:flutter/material.dart';

import '../../../../../config/theme/app_dimen.dart';
import '../../../../widget/primary_button.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w16),
      child: PrimaryButton(
        onPressed: () {},
        text: "Let's go",
        width: double.infinity,
      ),
    );
  }
}