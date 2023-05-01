import 'package:booking/config/theme/app_dimen.dart';
import 'package:booking/presentation/pages/welcome/welcome_done/view.dart';
import 'package:booking/presentation/widget/app_input_text.dart';
import 'package:booking/presentation/widget/primary_button.dart';
import 'package:booking/utils/extension/double_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../config/theme/app_font.dart';
import '../cubit.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<LoginCubit>(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Login",
            style: AppFont.h3,
          ),
          16.0.height,
           AppInputText(
            label: 'Email',
            controller: cubit.state.emailController,
          ),
          16.0.height,
           AppInputText(
            label: 'Password',
            controller: cubit.state.passwordController,
          ),
          16.0.height,
          PrimaryButton(
            onPressed: cubit.login,
            text: 'Login',
            width: double.infinity,
            type: PrimaryButtonType.type3,
          ),
        ],
      ),
    );
  }
}
