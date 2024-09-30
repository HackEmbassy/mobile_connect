import 'package:herhealthconnect/Core/Helpers/Model/create_profession_model_entity/create_profession_model_entity.dart';
import 'package:herhealthconnect/Core/Helpers/Model/create_user_model_entity/create_user_model_entity.dart';
import 'package:herhealthconnect/Core/Helpers/Model/login_model_entity/login_model_entity.dart';
import 'package:herhealthconnect/Core/Helpers/Model/login_response_model/login_response_model.dart';
import 'package:herhealthconnect/Core/Helpers/Model/user_model_entity/user_model_entity.dart';
import 'package:herhealthconnect/Core/Helpers/Model/user_response_model/user_response_model.dart';
import 'package:herhealthconnect/Core/Network/Network_Service.dart';
import 'package:herhealthconnect/Core/Network/UrlPath.dart';
import 'package:injectable/injectable.dart';
import '../CoreFolder/app.locator.dart';
import '../CoreFolder/app.logger.dart';

@lazySingleton
class AuthApi {
  final logger = getLogger('AuthApi');
  final _service = locator<NetworkService>();

  Future<UserResponseModel> register(UserModelEntity createUser) async {
    try {
      final response = await _service.call(
          UrlConfig.register_user, RequestMethod.post,
          data: createUser.toJson());
      return UserResponseModel.fromJson(response.data);
    } catch (e) {
      logger.d(e);
      rethrow;
    }
  }
  Future<LoginResponseModel> login(LoginModelEntity loginUser) async {
    try {
      final response = await _service.call(
          UrlConfig.login, RequestMethod.post,
          data: loginUser.toJson());
      return LoginResponseModel.fromJson(response.data);
    } catch (e) {
      logger.d(e);
      rethrow;
    }
  }
  Future proffesion(CreateProfessionModelEntity profCreate) async {
    try {
      final response = await _service.call(
          UrlConfig.login, RequestMethod.post,
          data: profCreate.toJson());
      return response.data;
    } catch (e) {
      logger.d(e);
      rethrow;
    }
  }
}
