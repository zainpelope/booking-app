
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';

import '../../../config/theme/app_color.dart';
import '../../../utils/helper/pref_helper.dart';
import 'component/welcome_button.dart';
import 'component/welcome_image.dart';
import 'component/welcome_title.dart';
import 'welcome_cubit.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Logger.root.info("WelcomePage build ${PrefHelper.instance.token}");
    return BlocProvider(
      create: (BuildContext context) => WelcomeCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.accentBlue,
      body: Column(
        children: const [WelcomeTitle(), WelcomeButton(), WelcomeImage()],
      ),
    );
  }
}