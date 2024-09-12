import 'package:json_annotation/json_annotation.dart';

part 'professional.g.dart';

@JsonSerializable()
class Professional {
  String? name;
  String? profession;
  String? specialty;
  String? phone;
  String? clinicOrGym;

  Professional({
    this.name,
    this.profession,
    this.specialty,
    this.phone,
    this.clinicOrGym,
  });

  factory Professional.fromJson(Map<String, dynamic> json) {
    return _$ProfessionalFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProfessionalToJson(this);
}
