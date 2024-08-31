import 'package:herhealthconnect/Core/CoreFolder/Manager/shared_preferences.dart';
import 'package:herhealthconnect/Core/CoreFolder/app.locator.dart';
import 'package:herhealthconnect/Core/Helpers/Contract/contract-implementation.dart';
import 'package:herhealthconnect/Core/Helpers/Model/create_user_model_entity/create_user_model_entity.dart';
import 'package:herhealthconnect/Core/Helpers/Repository/respository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthRepoImpl implements AuthRepo {
  final _session = locator<SharedPreferencesService>();
  final _contract = locator<AuthContractsImpl>();
  @override
  Future register(CreateUserModelEntity createUsers) async {
    final response = await _contract.register(createUsers);
    return response;
  }
}
