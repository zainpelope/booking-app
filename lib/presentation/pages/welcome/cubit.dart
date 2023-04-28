import 'package:bloc/bloc.dart';

import 'state.dart';

class WelcomeCubit extends Cubit<WelcomeState> {
  WelcomeCubit() : super(WelcomeState().init());
}
