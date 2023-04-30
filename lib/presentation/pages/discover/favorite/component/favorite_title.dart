import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../config/theme/app_color.dart';
import '../../../../../config/theme/app_dimen.dart';
import '../../../../../config/theme/app_font.dart';

class FavoriteTitle extends StatelessWidget {
  const FavoriteTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: AppDimen.h60,
        left: AppDimen.w16,
        right: AppDimen.h16,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            'Your Roomies',
            style: AppFont.h3,
          ),
          const Expanded(
            child: SizedBox(),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: AppColor.ink02,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.star,
              color: AppColor.ink02,
            ),
          ),
        ],
      ),
    );
  }
}
