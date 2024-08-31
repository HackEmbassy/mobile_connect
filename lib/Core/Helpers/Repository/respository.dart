import 'package:herhealthconnect/Core/Helpers/Model/create_user_model_entity/create_user_model_entity.dart';

abstract class AuthRepo {
  Future register(CreateUserModelEntity createUsers);
}
