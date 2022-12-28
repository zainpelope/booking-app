
import 'package:booking_app/extension/double_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/theme/app_dimen.dart';
import '../../../widget/primary_button.dart';
import '../../../widget/secondary_button.dart';
import '../welcome_cubit.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = context.watch<WelcomeCubit>();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w16),
      child: Row(
        children: [
          Expanded(
            child: PrimaryButton(
                onPressed: cubit.handleBtnExplore, text: "Explore"),
          ),
          16.0.width,
          Expanded(
            child:
            SecondaryButton(onPressed: cubit.handleBtnLogin, text: "Login"),
          ),
        ],
      ),
    );
  }
}