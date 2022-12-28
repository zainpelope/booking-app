
import 'package:flutter/material.dart';

import '../../../../../config/theme/app_color.dart';
import '../../../../../config/theme/app_dimen.dart';
import '../../../../../config/theme/app_font.dart';

class FavoriteList extends StatelessWidget {
  const FavoriteList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (c, i) => _listItem(),
        itemCount: 10,
      ),
    );
  }

  Widget _listItem() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: AppDimen.w16,
      ),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(AppDimen.w16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "The Ngoding",
                    style: AppFont.paragraphMediumBold,
                  ),
                  Text(
                    "Jakarta, Indonesia",
                    style: AppFont.paragraphSmall.copyWith(
                      color: AppColor.ink02,
                    ),
                  ),
                ],
              ),

              const Icon(
                Icons.arrow_forward_ios,
                color: AppColor.ink01,
                size: 12,
              )
            ],
          ),
        ),
      ),
    );
  }
}