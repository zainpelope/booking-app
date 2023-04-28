import 'package:flutter/cupertino.dart';

import '../../../../../config/theme/app_dimen.dart';
import '../../../../../data/src/img_string.dart';

class WelcomeDoneImage extends StatelessWidget {
  const WelcomeDoneImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppDimen.w16,
        ),
        child: Image.asset(
          ImgString.avatarAndBackground,
        ),
      ),
    );
  }
}
