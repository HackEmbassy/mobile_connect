import 'package:json_annotation/json_annotation.dart';

part 'check_period_model_entity.g.dart';

@JsonSerializable()
class CheckPeriodModelEntity {
  String? phoneNumber;
  String? lastPeriodDate;

  CheckPeriodModelEntity({this.phoneNumber, this.lastPeriodDate});

  factory CheckPeriodModelEntity.fromJson(Map<String, dynamic> json) {
    return _$CheckPeriodModelEntityFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CheckPeriodModelEntityToJson(this);
}
