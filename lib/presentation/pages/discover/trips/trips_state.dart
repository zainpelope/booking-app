

import '../../../../config/networking/http_state.dart';
import '../../../../data/model/trips/trips.dart';

class TripsState {
  List<Trip> yourRoomies = [];
  List<Trip> otherMatches = [];
  HttpStateStatus status = HttpStateStatus.initial;

  TripsState init() {
    return TripsState();
  }

  TripsState clone() {
    return TripsState();
  }
}