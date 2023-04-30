import 'package:bloc/bloc.dart';

import 'state.dart';

class TripsCubit extends Cubit<TripsState> {
  TripsCubit() : super(TripsState().init());
}
