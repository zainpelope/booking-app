

import 'package:booking_app/extension/double_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/theme/app_color.dart';
import '../component/welcome_button.dart';
import '../component/welcome_title.dart';
import 'component/welcome_image.dart';
import 'welcome_done_cubit.dart';

class WelcomeDonePage extends StatelessWidget {
  const WelcomeDonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => WelcomeDoneCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    // final cubit = BlocProvider.of<WelcomeDoneCubit>(context);
    return Scaffold(
      backgroundColor: AppColor.accentGreen,
      body: Column(
        children: [
          102.0.height,
          const WelcomeImage(),
          24.0.height,
          const WelcomeTitle(),
          24.0.height,
          const WelcomeButton(),
          95.0.height
        ],
      ),
    );
  }
}