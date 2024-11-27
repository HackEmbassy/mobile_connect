import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'get_user_profile_response_model.g.dart';

@JsonSerializable()
class GetUserProfileResponseModel {
	bool? success;
	@JsonKey(name: 'response_message') 
	String? responseMessage;
	Data? data;

	GetUserProfileResponseModel({
		this.success, 
		this.responseMessage, 
		this.data, 
	});

	factory GetUserProfileResponseModel.fromJson(Map<String, dynamic> json) {
		return _$GetUserProfileResponseModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$GetUserProfileResponseModelToJson(this);
}
