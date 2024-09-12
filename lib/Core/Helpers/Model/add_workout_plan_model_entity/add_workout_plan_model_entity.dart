import 'package:json_annotation/json_annotation.dart';

part 'add_workout_plan_model_entity.g.dart';

@JsonSerializable()
class AddWorkoutPlanModelEntity {
  String? goal;
  List<String>? fitnessPlans;
  List<String>? dietPlans;

  AddWorkoutPlanModelEntity({this.goal, this.fitnessPlans, this.dietPlans});

  factory AddWorkoutPlanModelEntity.fromJson(Map<String, dynamic> json) {
    return _$AddWorkoutPlanModelEntityFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddWorkoutPlanModelEntityToJson(this);
}
