import 'package:booking/presentation/pages/welcome/login/component/login_footer.dart';
import 'package:booking/presentation/pages/welcome/login/component/login_form.dart';
import 'package:booking/presentation/pages/welcome/login/component/login_image.dart';
import 'package:booking/utils/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit.dart';
import 'state.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => LoginCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<LoginCubit>(context);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            60.0.height,
            const LoginImage(),
            48.0.height,
            const LoginForm(),
            16.0.height,
            const LoginFooter(),
          ],
        ),
      ),
    );
  }
}
