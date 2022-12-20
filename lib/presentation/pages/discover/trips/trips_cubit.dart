import 'package:bloc/bloc.dart';
import 'package:booking_app/config/config.dart';
import 'package:booking_app/domain/controller/trips_controller.dart';
import 'package:logging/logging.dart';

import 'trips_state.dart';

class TripsCubit extends Cubit<TripsState> implements HttpState {
  TripsCubit() : super(TripsState().init());

  late final TripsController _tripsController = TripsController(this);

  void getTrips() async {
    final trips = await _tripsController.getTrips();
    Logger.root.info(trips.result?.toJson());
    emit(
      state.clone()
        ..youRoomies = trips.result?.yourRoomies ?? []
        ..otherMatches = trips.result?.otherMatches ?? [],
    );
    Logger.root.info("TripsCubit getTrips ${state.youRoomies.length} ${state.otherMatches.length}");
  }

  @override
  void onEndRequest(String url, String method) {}

  @override
  void onErrorRequest(String url, String method) {}

  @override
  void onStartRequest(String url, String method) {}

  @override
  void onSuccessRequest(String url, String method) {}
}
