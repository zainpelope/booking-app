import 'package:booking_app/config/theme/app_dimen.dart';
import 'package:booking_app/extension/double_extension.dart';
import 'package:booking_app/presentation/pages/welcome/welcome_cubit.dart';
import 'package:booking_app/presentation/widget/primary_button.dart';
import 'package:booking_app/presentation/widget/secondary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
