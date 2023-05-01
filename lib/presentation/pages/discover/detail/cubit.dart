import 'package:bloc/bloc.dart';

import 'state.dart';

class DetailCubit extends Cubit<DetailState> {
  DetailCubit() : super(DetailState().init());
}
