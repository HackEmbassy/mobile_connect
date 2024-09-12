// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_workout_plan_model_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddWorkoutPlanModelEntity _$AddWorkoutPlanModelEntityFromJson(
        Map<String, dynamic> json) =>
    AddWorkoutPlanModelEntity(
      goal: json['goal'] as String?,
      fitnessPlans: (json['fitnessPlans'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      dietPlans: (json['dietPlans'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$AddWorkoutPlanModelEntityToJson(
        AddWorkoutPlanModelEntity instance) =>
    <String, dynamic>{
      'goal': instance.goal,
      'fitnessPlans': instance.fitnessPlans,
      'dietPlans': instance.dietPlans,
    };
