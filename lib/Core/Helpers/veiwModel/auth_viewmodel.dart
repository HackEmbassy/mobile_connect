import 'package:herhealthconnect/Core/AppUtils/app_ui_components.dart';
import 'package:herhealthconnect/Core/CoreFolder/Manager/shared_preferences.dart';
import 'package:herhealthconnect/Core/CoreFolder/app.locator.dart';
import 'package:herhealthconnect/Core/CoreFolder/app.logger.dart';
import 'package:herhealthconnect/Core/CoreFolder/app.router.dart';
import 'package:herhealthconnect/Core/Helpers/Model/login_model_entity/login_model_entity.dart';
import 'package:herhealthconnect/Core/Helpers/Model/login_response_model/login_response_model.dart';
import 'package:herhealthconnect/Core/Helpers/Model/user_model_entity/user_model_entity.dart';
import 'package:herhealthconnect/Core/Helpers/Model/user_response_model/user_response_model.dart';
import 'package:herhealthconnect/Core/Helpers/Repository/repository_implementation.dart';
import 'package:herhealthconnect/Core/router/page_router.dart';
import 'package:http/http.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

class AuthViewmodel extends BaseViewModel {
  final BuildContext? context;
  AuthViewmodel({this.context});
  final logger = getLogger('AuthViewModel');
  final repositoryImply = AuthRepoImpl();
  bool? _isLoading;
  bool? get isLoading => _isLoading;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final _session = locator<SharedPreferencesService>();

  UserResponseModel? get createUserInput => _createUserInput;
  UserResponseModel? _createUserInput;

  Future<void> signUpUser(UserModelEntity signUpUser) async {
    try {
      _isLoading = true;
      _createUserInput = await runBusyFuture(
        repositoryImply.register(signUpUser),
        throwException: true,
      );
      _isLoading = false;
      AppUiComponents.triggerNotification("Account Created", error: false);
      PageRouter.pushNamed(Routes.loginPage);
    } catch (e) {
      _isLoading = false;
      logger.d(e);
      AppUiComponents.triggerNotification(e.toString(), error: true);
    }
    notifyListeners();
  }

  LoginResponseModel? get loginResponse => _loginResponse;
  LoginResponseModel? _loginResponse;
  Future<void> login(LoginModelEntity loginUser) async {
    try {
      _isLoading = true;
      _loginResponse = await runBusyFuture(
        repositoryImply.login(loginUser),
        throwException: true,
      );
      SharedPreferencesService.instance.isLoggedIn = true;
      _session.authToken = _loginResponse!.data!.token.toString();
      _isLoading = false;
      AppUiComponents.triggerNotification("Logged In", error: false);
      PageRouter.pushNamed(Routes.userDashboard);
    } catch (e) {
      _isLoading = false;
      logger.d(e);
      AppUiComponents.triggerNotification(e.toString(), error: true);
    }
    notifyListeners();
  }
}
