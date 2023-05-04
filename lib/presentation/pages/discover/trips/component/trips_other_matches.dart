import 'package:booking/config/config.dart';
import 'package:booking/data/src/img_string.dart';
import 'package:booking/presentation/pages/discover/trips/cubit.dart';
import 'package:booking/utils/extension/double_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/app_color.dart';
import '../../../../../config/theme/app_dimen.dart';
import '../../../../../config/theme/app_font.dart';
import '../../../../../data/model/trip/trip.dart';

class TripsOtherMatches extends StatelessWidget {
  const TripsOtherMatches({Key? key, required this.otherMatches})
      : super(key: key);
  final List<Trip> otherMatches;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _header(),
          _roomiesList(context),
        ],
      ),
    );
  }

  Widget _roomiesList(BuildContext context) {
    final cubit = BlocProvider.of<TripsCubit>(context);
    return Expanded(
      child: cubit.state.status == HttpStateStatus.loading
          ? const Center(
              child: CupertinoActivityIndicator(),
            )
          : cubit.state.status == HttpStateStatus.error
              ? const Center(
                  child: Text("Error!!"),
                )
              : ListView.builder(
                  itemBuilder: (c, i) => _roomiesItem(
                    context,
                    otherMatches[i],
                  ),
                  itemCount: otherMatches.length,
                  scrollDirection: Axis.horizontal,
                ),
    );
  }

  Widget _roomiesItem(BuildContext context, Trip trip) {
    return Container(
      margin: EdgeInsets.only(
        left: AppDimen.w16,
        top: AppDimen.w24,
        bottom: AppDimen.h16,
      ),
      padding: EdgeInsets.only(
        right: AppDimen.w16,
        left: AppDimen.w16,
        bottom: AppDimen.w16,
        top: 49.0.h,
      ),
      width: (MediaQuery.of(context).size.width / 2) - AppDimen.w38,
      decoration: BoxDecoration(
        color: AppColor.ink06,
        borderRadius: BorderRadius.circular(
          AppDimen.w16,
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              ImgString.plants,
            ),
          ),
          37.0.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                trip.name ?? "",
                style: AppFont.paragraphLargeBold,
              ),
              Text(
                "\$${trip?.price ?? 0}",
                style: AppFont.paragraphSmall,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _header() {
    return Padding(
      padding: EdgeInsets.only(
        top: AppDimen.h24,
        left: AppDimen.w16,
        right: AppDimen.h16,
      ),
      child: Text(
        'Other Matches',
        style: AppFont.h3,
      ),
    );
  }
}
