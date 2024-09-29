import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'user_response_model.g.dart';

@JsonSerializable()
class UserResponseModel {
  bool? success;
  @JsonKey(name: 'response_message')
  String? responseMessage;
  Data? data;

  UserResponseModel({this.success, this.responseMessage, this.data});

  factory UserResponseModel.fromJson(Map<String, dynamic> json) {
    return _$UserResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserResponseModelToJson(this);
}
