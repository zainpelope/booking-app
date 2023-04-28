import 'package:bloc/bloc.dart';

import 'state.dart';

class Forgot_passwordCubit extends Cubit<Forgot_passwordState> {
  Forgot_passwordCubit() : super(Forgot_passwordState().init());
}
