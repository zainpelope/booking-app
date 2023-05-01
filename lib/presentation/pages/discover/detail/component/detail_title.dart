import 'package:booking/config/config.dart';
import 'package:booking/config/theme/app_dimen.dart';
import 'package:booking/utils/extension/double_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailTitle extends StatelessWidget {
  const DetailTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimen.w24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "City of Los Angeles",
            style: AppFont.h3,
          ),
          13.5.height,
          Row(
            children: [
              const Icon(Icons.location_on, size: 20),
              13.0.width,
              Text("Unlimited downloads", style: AppFont.paragraphMedium),
            ],
          ),
          11.0.height,
          Row(
            children: [
              const Icon(Icons.home, size: 20),
              13.0.width,
              Text("Unlimited downloads", style: AppFont.paragraphMedium),
            ],
          ),
          11.0.height,
          Row(
            children: [
              const Icon(Icons.favorite, size: 20),
              13.0.width,
              Text("Unlimited downloads", style: AppFont.paragraphMedium),
            ],
          ),
          11.0.height,
          Row(
            children: [
              const Icon(Icons.camera_alt_outlined, size: 20),
              13.0.width,
              Text("Unlimited downloads", style: AppFont.paragraphMedium),
            ],
          ),
          11.0.height,
          Row(
            children: [
              const Icon(Icons.face, size: 20),
              13.0.width,
              Text("Unlimited downloads", style: AppFont.paragraphMedium),
            ],
          ),
          13.5.height,
          const Text("Hey you, looking for a roommate? We've helped millions across the nation find their perfect match... and you're next! Hey you, looking for a roommate? We've helped millions across the nation find their perfect match... and you're next!",textAlign: TextAlign.justify,)
        ],
      ),
    );
  }
}
