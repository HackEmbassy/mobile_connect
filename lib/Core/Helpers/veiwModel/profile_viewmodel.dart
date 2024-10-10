import 'package:herhealthconnect/Core/AppUtils/app_ui_components.dart';
import 'package:herhealthconnect/Core/CoreFolder/Manager/shared_preferences.dart';
import 'package:herhealthconnect/Core/CoreFolder/app.locator.dart';
import 'package:herhealthconnect/Core/CoreFolder/app.logger.dart';
import 'package:herhealthconnect/Core/CoreFolder/app.router.dart';
import 'package:herhealthconnect/Core/Helpers/Model/get_all_professiona_response_model/get_all_professiona_response_model.dart';
import 'package:herhealthconnect/Core/Helpers/Repository/repository_implementation.dart';
import 'package:herhealthconnect/Core/router/page_router.dart';
import 'package:stacked/stacked.dart';

class ProfileViewmodel extends IndexTrackingViewModel {
  ProfileViewmodel();
  final logger = getLogger('ProfileViewmodel');
  final SharedPreferencesService _session = locator<SharedPreferencesService>();
  final repositoryImply = AuthRepoImpl();
  bool? _isLoading;
  bool? get isLoading => _isLoading;

  void logout() async {
    await _session.logOut();
    PageRouter.pushReplacement(Routes.onboardingScreen);
    notifyListeners();
    // await locator.reset(dispose: true);
  }

  GetAllProfessionaResponseModel? get profData => _profData;
  GetAllProfessionaResponseModel? _profData;
  Future<void> professional() async {
    try {
      _isLoading = true;
      _profData = await runBusyFuture(
        repositoryImply.getProf(),
        throwException: true,
      );
      _isLoading = false;
    } catch (e) {
      _isLoading = false;
      logger.d(e);
      AppUiComponents.triggerNotification(e.toString(), error: true);
    }
    notifyListeners();
  }
}
