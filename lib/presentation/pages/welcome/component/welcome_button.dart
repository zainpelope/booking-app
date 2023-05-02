import 'package:booking/config/theme/app_dimen.dart';
import 'package:booking/presentation/pages/welcome/login/view.dart';
import 'package:booking/presentation/widget/secondary_button.dart';
import 'package:booking/utils/extension/extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../widget/primary_button.dart';
import '../cubit.dart';
import '../view.dart';

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
              onPressed: cubit.handleBtnExplore,
              text: 'Explore',
              type: PrimaryButtonType.type1,
            ),
          ),
          16.0.width,
          Expanded(
            child: SecondaryButton(
              onPressed: cubit.handleBtnLogin,
              text: 'Login',
            ),
          ),
        ],
      ),
    );
  }
}
