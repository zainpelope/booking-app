import 'package:flutter/cupertino.dart';

import '../../../../../config/theme/app_dimen.dart';
import '../../../../../data/src/img_string.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: AppDimen.w16),
      child: Expanded(
        child: Image.asset(ImgString.backdrop),
      ),
    );
  }
}
