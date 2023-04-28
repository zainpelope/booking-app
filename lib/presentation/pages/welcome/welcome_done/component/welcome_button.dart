import 'package:booking/presentation/widget/primary_button.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../config/theme/app_dimen.dart';

class WelcomeDoneButton extends StatelessWidget {
  const WelcomeDoneButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: AppDimen.w16,),
      child: PrimaryButton(
        onPressed: () {},
        text: "Let's go",
        width: double.infinity,
      ),
    );
  }
}
