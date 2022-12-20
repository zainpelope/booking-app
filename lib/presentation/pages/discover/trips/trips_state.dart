import 'package:booking_app/data/model/trips/trips.dart';

class TripsState {
  List<Trips> youRoomies = [];
  List<Trips> otherMatches = [];

  TripsState init() {
    return TripsState();
  }

  TripsState clone() {
    return TripsState();
  }
}
