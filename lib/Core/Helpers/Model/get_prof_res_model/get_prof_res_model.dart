import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'get_prof_res_model.g.dart';

@JsonSerializable()
class GetProfResModel {
	bool? success;
	@JsonKey(name: 'response_message') 
	String? responseMessage;
	Data? data;

	GetProfResModel({this.success, this.responseMessage, this.data});

	factory GetProfResModel.fromJson(Map<String, dynamic> json) {
		return _$GetProfResModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$GetProfResModelToJson(this);
}
