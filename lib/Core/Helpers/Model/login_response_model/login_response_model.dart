import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel {
  bool? success;
  @JsonKey(name: 'response_message')
  String? responseMessage;
  Data? data;

  LoginResponseModel({this.success, this.responseMessage, this.data});

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return _$LoginResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoginResponseModelToJson(this);
}
