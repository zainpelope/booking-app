import 'dart:io';

import 'package:booking/data/model/trip/trip.dart';

import '../../../../config/networking/http_state.dart';

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
