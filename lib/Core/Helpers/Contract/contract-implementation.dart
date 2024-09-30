import 'package:herhealthconnect/Core/Api/auth_api.dart';
import 'package:herhealthconnect/Core/CoreFolder/app.locator.dart';
import 'package:herhealthconnect/Core/Helpers/Contract/Contract.dart';
import 'package:herhealthconnect/Core/Helpers/Model/create_profession_model_entity/create_profession_model_entity.dart';
import 'package:herhealthconnect/Core/Helpers/Model/login_model_entity/login_model_entity.dart';
import 'package:herhealthconnect/Core/Helpers/Model/login_response_model/login_response_model.dart';
import 'package:herhealthconnect/Core/Helpers/Model/user_model_entity/user_model_entity.dart';
import 'package:herhealthconnect/Core/Helpers/Model/user_response_model/user_response_model.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthContractsImpl implements Contracts {
  final _api = locator<AuthApi>();
  @override
  Future<UserResponseModel> register(UserModelEntity createUsers) async {
    return await _api.register(createUsers);
  }

  @override
  Future<LoginResponseModel> login(LoginModelEntity login) async {
    return await _api.login(login);
  }

  @override
  Future createProfession(CreateProfessionModelEntity createProf) {
    // TODO: implement createProfession
    throw UnimplementedError();
  }
}
