import 'package:booking_app/data/model/trips/trips.dart';

import '../../data/model/auth/login.dart';

class BaseResponse {
  BaseResponse({
    this.message,
    this.result,
  });

  BaseResponse.fromJson(dynamic json) {
    message = json['message'];
    result = json['result'] != null ? Result.fromJson(json['result']) : null;
  }
  String? message;
  Result? result;
  BaseResponse copyWith({
    String? message,
    Result? result,
  }) =>
      BaseResponse(
        message: message ?? this.message,
        result: result ?? this.result,
      );
}

class Result {
  Result({
    this.login,
    this.trips,
    this.yourRoomies,
    this.otherMatches,
  });

  Result.fromJson(dynamic json) {
    login = json['login'] != null ? Login.fromJson(json['login']) : null;
    trips = json['trips'] != null ? Trips.fromJson(json['trips']) : null;

    if (json['yourRoomies'] != null) {
      yourRoomies = [];
      json['yourRoomies'].forEach((v) {
        yourRoomies?.add(Trips.fromJson(v));
      });
    }

    if (json['otherMatches'] != null) {
      otherMatches = [];
      json['otherMatches'].forEach((v) {
        otherMatches?.add(Trips.fromJson(v));
      });
    }
  }
  Login? login;
  Trips? trips;
  List<Trips>? yourRoomies;
  List<Trips>? otherMatches;

  Result copyWith({
    Login? login,
    Trips? trips,
    List<Trips>? yourRoomies,
    List<Trips>? otherMatches,
  }) =>
      Result(
        login: login ?? this.login,
        trips: trips ?? this.trips,
        yourRoomies: yourRoomies ?? this.yourRoomies,
        otherMatches: otherMatches ?? this.otherMatches,
      );
}
