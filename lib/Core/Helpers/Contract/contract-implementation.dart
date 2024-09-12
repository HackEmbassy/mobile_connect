import 'package:herhealthconnect/Core/Api/auth_api.dart';
import 'package:herhealthconnect/Core/CoreFolder/app.locator.dart';
import 'package:herhealthconnect/Core/Helpers/Contract/Contract.dart';
import 'package:herhealthconnect/Core/Helpers/Model/create_user_model_entity/create_user_model_entity.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthContractsImpl implements Contracts {
  final _api = locator<AuthApi>();
  @override
  Future register(CreateUserModelEntity createUsers) async {
    return await _api.register(createUsers);
  }
}
