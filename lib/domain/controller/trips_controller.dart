import 'dart:convert';

import 'package:booking_app/data/repository/repository.dart';

import '../../config/networking/api_client.dart';
import '../../config/networking/base_response.dart';
import '../../data/endpoint/endpoint.dart';

class TripsController implements TripsRepository {
  final ApiClient _client = ApiClient();
  @override
  Future<BaseResponse> detailTrips(int id) async {
    late final BaseResponse baseResponse;
    final response = await _client.get(
      Uri.parse("${Endpoint.trips}/$id"),

    );
    if (response.statusCode < 500) {
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      baseResponse = BaseResponse(message: response.body);
    }
    return baseResponse;

  }
  @override
  Future<BaseResponse> getTrips () async {
    late final BaseResponse baseResponse;
    final response = await _client.get(
      Uri.parse(Endpoint.trips),

    );
    if (response.statusCode < 500) {
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      baseResponse = BaseResponse(message: response.body);
    }
    return baseResponse;
  }
}