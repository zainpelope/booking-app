import 'package:bloc/bloc.dart';

import 'state.dart';

class Welcome_doneCubit extends Cubit<Welcome_doneState> {
  Welcome_doneCubit() : super(Welcome_doneState().init());
}
