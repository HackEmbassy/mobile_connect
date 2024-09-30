import 'package:herhealthconnect/Core/CoreFolder/Manager/shared_preferences.dart';
import 'package:herhealthconnect/Core/CoreFolder/app.locator.dart';
import 'package:herhealthconnect/Core/Helpers/Contract/contract-implementation.dart';
import 'package:herhealthconnect/Core/Helpers/Model/create_profession_model_entity/create_profession_model_entity.dart';
import 'package:herhealthconnect/Core/Helpers/Model/login_model_entity/login_model_entity.dart';
import 'package:herhealthconnect/Core/Helpers/Model/login_response_model/login_response_model.dart';
import 'package:herhealthconnect/Core/Helpers/Model/user_model_entity/user_model_entity.dart';
import 'package:herhealthconnect/Core/Helpers/Model/user_response_model/user_response_model.dart';
import 'package:herhealthconnect/Core/Helpers/Repository/respository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthRepoImpl implements AuthRepo {
  final _session = locator<SharedPreferencesService>();
  final _contract = locator<AuthContractsImpl>();
  @override
  Future<UserResponseModel> register(UserModelEntity createUsers) async {
    final response = await _contract.register(createUsers);
    return response;
  }

  @override
  Future<LoginResponseModel> login(LoginModelEntity login) async {
    final response = await _contract.login(login);
    _session.isLoggedIn = true;
    _chache(response.data?.token);
    return response;
  }

  void _chache(data) {
    if (data != null) {
      _session.authToken = data!;
      // _session.usersData = data.user.toJson();
    }
  }

  @override
  Future createProfession(CreateProfessionModelEntity createProf) {
    // TODO: implement createProfession
    throw UnimplementedError();
  }
}
