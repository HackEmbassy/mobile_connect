import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'get_all_professiona_response_model.g.dart';

@JsonSerializable()
class GetAllProfessionaResponseModel {
  bool? success;
  @JsonKey(name: 'response_message')
  String? responseMessage;
  List<Datum>? data;

  GetAllProfessionaResponseModel({
    this.success,
    this.responseMessage,
    this.data,
  });

  factory GetAllProfessionaResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GetAllProfessionaResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$GetAllProfessionaResponseModelToJson(this);
  }
}
