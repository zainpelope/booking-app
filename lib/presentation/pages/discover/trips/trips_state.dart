import 'package:booking_app/config/networking/http_state.dart';
import 'package:booking_app/data/model/trips/trips.dart';

class TripsState {
  List<Trips> youRoomies = [];
  List<Trips> otherMatches = [];
  HttpStateStatus status = HttpStateStatus.initial;

  TripsState init() {
    return TripsState();
  }

  TripsState clone() {
    return TripsState();
  }
}
