import 'package:booking/config/config.dart';
import 'package:booking/utils/extension/double_extension.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../config/theme/app_dimen.dart';

class WelcomeDoneTitle extends StatelessWidget {
  const WelcomeDoneTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimen.w16,
      ),
      child: Column(
        children: [
          Text(
            "Find Your Roomie",
            style: AppFont.h4,
          ),
          8.0.height,
          Text(
            "We've helped millions across the nation find their perfect match... and you're next!",
            style: AppFont.paragraphMedium,textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
