import 'package:herhealthconnect/Core/Api/auth_api.dart';
import 'package:herhealthconnect/Core/CoreFolder/Manager/shared_preferences.dart';
import 'package:herhealthconnect/Core/Helpers/Contract/contract-implementation.dart';
import 'package:herhealthconnect/Core/Helpers/Repository/repository_implementation.dart';
import 'package:herhealthconnect/Core/Helpers/veiwModel/auth_viewmodel.dart';
import 'package:herhealthconnect/Core/Network/Network_Service.dart';
import 'package:herhealthconnect/Screens/Authentications_Screens/login.dart';
import 'package:herhealthconnect/Screens/Authentications_Screens/sign_up.dart';
import 'package:herhealthconnect/Screens/Onboarding/Splash.dart';
import 'package:herhealthconnect/Screens/Onboarding/onboarding.dart';
import 'package:herhealthconnect/Screens/User_Dashboard/user_dashboard.dart';
import 'package:herhealthconnect/Screens/kyc/congrats_page.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: OnboardingScreen, initial: false),
    MaterialRoute(page: UserDashboard, initial: false),
    MaterialRoute(page: LoginPage, initial: false),
    MaterialRoute(page: SplashScreen, initial: false),
    MaterialRoute(page: CongratsPage, initial: false),
    MaterialRoute(page: SignUpScreen, initial: false),
  ],
   dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: SharedPreferencesService),
    LazySingleton(classType: AuthApi),
    LazySingleton(classType: NetworkService),
    LazySingleton(classType: AuthContractsImpl),
    LazySingleton(classType: AuthRepoImpl),
    LazySingleton(classType: AuthViewmodel),
  ],
  logger: StackedLogger(),
)
class App {}
