import 'package:herhealthconnect/Core/Helpers/Model/create_user_model_entity/create_user_model_entity.dart';
import 'package:herhealthconnect/Core/Helpers/Model/user_model_entity/user_model_entity.dart';

abstract class Contracts {
  Future register(UserModelEntity createUsers);
}
