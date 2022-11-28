import 'package:booking_app/config/theme/app_dimen.dart';
import 'package:booking_app/utils/extension.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../config/theme/app_font.dart';

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w32),
      child: Column(
        children: [
          Text(
            "Find Your Roomie",
            style: AppFont.h4,
          ),
          8.0.height,
          Text(
            "We've helped millions across the nation find their perfect match... and you're next!",
            style: AppFont.pragraphSmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
