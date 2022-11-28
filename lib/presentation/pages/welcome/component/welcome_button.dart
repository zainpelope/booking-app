import 'package:booking_app/extension/double_extension.dart';
import 'package:booking_app/presentation/widget/secondary_button.dart';
import 'package:flutter/cupertino.dart';

import '../../../../config/theme/app_dimen.dart';
import '../../../widget/primary_button.dart';

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
            ),
          ),16.0.width,
          Expanded(
            child: SecondaryButton(
              onPressed: () {},
              text: 'Login',
            ),
          )
        ],
      ),
    );
  }
}
