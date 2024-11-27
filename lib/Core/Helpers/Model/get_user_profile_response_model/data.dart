import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
	List<dynamic>? interests;
	@JsonKey(name: '_id') 
	String? id;
	String? fullName;
	String? email;
	String? password;
	String? phone;
	int? age;
	String? gender;
	String? state;
	String? city;
	double? latitude;
	double? longitude;
	DateTime? createdAt;
	DateTime? updatedAt;
	@JsonKey(name: '__v') 
	int? v;

	Data({
		this.interests, 
		this.id, 
		this.fullName, 
		this.email, 
		this.password, 
		this.phone, 
		this.age, 
		this.gender, 
		this.state, 
		this.city, 
		this.latitude, 
		this.longitude, 
		this.createdAt, 
		this.updatedAt, 
		this.v, 
	});

	factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

	Map<String, dynamic> toJson() => _$DataToJson(this);
}
