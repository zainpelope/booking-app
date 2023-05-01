import 'package:booking/config/theme/app_color.dart';
import 'package:booking/config/theme/app_dimen.dart';
import 'package:booking/presentation/pages/discover/detail/view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/app_font.dart';

class FavoriteList extends StatelessWidget {
  const FavoriteList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const DetailPage(),
            ),
          );
        },
        child: ListView.builder(
          itemBuilder: (c, i) => _listItem(),
        ),
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
          padding: EdgeInsets.all(
            AppDimen.w16,
          ),
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
                    "The Ngoding",
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
