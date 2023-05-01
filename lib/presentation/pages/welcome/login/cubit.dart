import 'package:bloc/bloc.dart';
import 'package:booking/domain/controller/auth_controller.dart';

import 'state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState().init());
  final AuthController _authController = AuthController();

  void login() async {
    _authController.login(
        state.emailController.text, state.passwordController.text);
  }
}
