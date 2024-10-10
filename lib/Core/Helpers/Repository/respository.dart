import 'package:herhealthconnect/Core/Helpers/Model/create_profession_model_entity/create_profession_model_entity.dart';
import 'package:herhealthconnect/Core/Helpers/Model/create_profession_response_model/create_profession_response_model.dart';
import 'package:herhealthconnect/Core/Helpers/Model/get_all_professiona_response_model/get_all_professiona_response_model.dart';
import 'package:herhealthconnect/Core/Helpers/Model/login_model_entity/login_model_entity.dart';
import 'package:herhealthconnect/Core/Helpers/Model/login_response_model/login_response_model.dart';
import 'package:herhealthconnect/Core/Helpers/Model/user_model_entity/user_model_entity.dart';
import 'package:herhealthconnect/Core/Helpers/Model/user_response_model/user_response_model.dart';

abstract class AuthRepo {
  Future<UserResponseModel> register(UserModelEntity createUsers);
  Future<LoginResponseModel> login(LoginModelEntity login);
  Future<LoginResponseModel> profLogin(LoginModelEntity login);
  Future<GetAllProfessionaResponseModel> getProf();
  Future<CreateProfessionResponseModel> createProfession(
      CreateProfessionModelEntity createProf);
}
