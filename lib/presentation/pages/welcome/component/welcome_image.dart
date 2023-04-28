import 'package:flutter/cupertino.dart';

import '../../../../data/src/img_string.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.asset(
        ImgString.giantPhone,
        fit: BoxFit.contain,
      ),
    );
  }
}
