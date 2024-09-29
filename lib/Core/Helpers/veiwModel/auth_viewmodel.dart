import 'package:herhealthconnect/Core/AppUtils/app_ui_components.dart';
import 'package:herhealthconnect/Core/CoreFolder/app.logger.dart';
import 'package:herhealthconnect/Core/Helpers/Model/create_user_model_entity/create_user_model_entity.dart';
import 'package:herhealthconnect/Core/Helpers/Model/user_model_entity/user_model_entity.dart';
import 'package:herhealthconnect/Core/Helpers/Repository/repository_implementation.dart';
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

  // CreateUserModelEntity? get createUserInput => _createUserInput;
  // CreateUserModelEntity? _createUserInput;

  Future<void> signUpUser(UserModelEntity signUpUser) async {
    try {
      _isLoading = true;
      final register = await runBusyFuture(
        repositoryImply.register(signUpUser),
        throwException: true,
      );
      _isLoading = false;
      AppUiComponents.triggerNotification("Account Created", error: false);
    } catch (e) {
      _isLoading = false;
      logger.d(e);
      AppUiComponents.triggerNotification(e.toString(), error: true);
    }
    notifyListeners();
  }
}
