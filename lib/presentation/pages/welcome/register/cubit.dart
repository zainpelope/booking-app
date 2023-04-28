import 'package:bloc/bloc.dart';

import 'state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterState().init());
}
