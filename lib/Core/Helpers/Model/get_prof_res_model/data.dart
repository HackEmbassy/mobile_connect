import 'package:json_annotation/json_annotation.dart';

import 'location.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
	@JsonKey(name: '_id') 
	String? id;
	String? fullName;
	String? email;
	String? password;
	String? phone;
	String? profession;
	String? specialty;
	String? clinicOrGym;
	String? city;
	Location? location;
	String? bio;
	int? experienceYears;
	DateTime? createdAt;
	@JsonKey(name: '__v') 
	int? v;

	Data({
		this.id, 
		this.fullName, 
		this.email, 
		this.password, 
		this.phone, 
		this.profession, 
		this.specialty, 
		this.clinicOrGym, 
		this.city, 
		this.location, 
		this.bio, 
		this.experienceYears, 
		this.createdAt, 
		this.v, 
	});

	factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

	Map<String, dynamic> toJson() => _$DataToJson(this);
}
