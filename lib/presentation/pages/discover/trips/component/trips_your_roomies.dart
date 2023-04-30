import 'package:booking/config/theme/app_color.dart';
import 'package:booking/data/src/img_string.dart';
import 'package:booking/presentation/pages/discover/trips/cubit.dart';
import 'package:booking/utils/extension/double_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/app_dimen.dart';
import '../../../../../config/theme/app_font.dart';

class TripsYourRoomies extends StatelessWidget {
  const TripsYourRoomies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<TripsCubit>(context);
    return Expanded(
      child: Column(
        children: [
          _header(),
          _roomiesList(),
        ],
      ),
    );
  }

  Widget _roomiesList() {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (c, i) => _roomiesItem(),
        itemCount: 3,
      ),
    );
  }

  Widget _roomiesItem() {
    return Container(
      height: 72,
      margin: EdgeInsets.only(
        bottom: AppDimen.h16,
        left: AppDimen.w16,
        right: AppDimen.w16,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: AppDimen.w16,
        vertical: AppDimen.h8,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.ink06,
        borderRadius: BorderRadius.circular(
          AppDimen.w8,
        ),
      ),
      child: Row(
        children: [
          _avatar(),
          8.0.width,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Pelope",
                  style: AppFont.paragraphMediumBold,
                ),
                Text(
                  "Palengaan Daya",
                  style: AppFont.paragraphSmall.copyWith(
                    color: AppColor.ink02,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.more_vert,
          ),
        ],
      ),
    );
  }

  Widget _avatar() {
    return SizedBox(
      height: 56.w,
      width: 56.w,
      child: Stack(
        children: [
          Center(
            child: CircleAvatar(
              radius: 28.w,
              backgroundColor: AppColor.ink03,
            ),
          ),
          Center(
            child: CircleAvatar(
              backgroundColor: AppColor.ink06,
              radius: 26.w,
              backgroundImage: const AssetImage(
                ImgString.avatar,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _header() {
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
