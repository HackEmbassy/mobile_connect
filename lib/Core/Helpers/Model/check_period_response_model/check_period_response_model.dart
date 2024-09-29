import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'check_period_response_model.g.dart';

@JsonSerializable()
class CheckPeriodResponseModel {
  bool? success;
  String? message;
  Data? data;

  CheckPeriodResponseModel({this.success, this.message, this.data});

  factory CheckPeriodResponseModel.fromJson(Map<String, dynamic> json) {
    return _$CheckPeriodResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CheckPeriodResponseModelToJson(this);
}
