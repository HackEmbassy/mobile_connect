import 'package:json_annotation/json_annotation.dart';

import 'professional.dart';
import 'user.dart';

part 'book_appointment_model_entity.g.dart';

@JsonSerializable()
class BookAppointmentModelEntity {
  Professional? professional;
  User? user;
  String? date;
  int? duration;
  String? status;
  String? time;
  String? reason;

  BookAppointmentModelEntity({
    this.professional,
    this.user,
    this.date,
    this.duration,
    this.status,
    this.time,
    this.reason,
  });

  factory BookAppointmentModelEntity.fromJson(Map<String, dynamic> json) {
    return _$BookAppointmentModelEntityFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BookAppointmentModelEntityToJson(this);
}
