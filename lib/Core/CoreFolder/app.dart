import 'package:herhealthconnect/Core/Api/auth_api.dart';
import 'package:herhealthconnect/Core/Api/workApi.dart';
import 'package:herhealthconnect/Core/CoreFolder/Manager/shared_preferences.dart';
import 'package:herhealthconnect/Core/Helpers/Contract/contract-implementation.dart';
import 'package:herhealthconnect/Core/Helpers/Repository/repository_implementation.dart';
import 'package:herhealthconnect/Core/Helpers/veiwModel/auth_viewmodel.dart';
import 'package:herhealthconnect/Core/Helpers/veiwModel/profile_viewmodel.dart';
import 'package:herhealthconnect/Core/Network/Network_Service.dart';
import 'package:herhealthconnect/Professional_Side/Authentications_Screens/Professional_forgot_password.dart';
import 'package:herhealthconnect/Professional_Side/Authentications_Screens/Professional_login.dart';
import 'package:herhealthconnect/Professional_Side/Authentications_Screens/Professional_set_new_password.dart';
import 'package:herhealthconnect/Professional_Side/Authentications_Screens/Professional_sign_up.dart';
import 'package:herhealthconnect/Professional_Side/Authentications_Screens/Professional_successful.dart';
import 'package:herhealthconnect/Professional_Side/Professional_Client.dart';
import 'package:herhealthconnect/Professional_Side/Professional_appointments.dart';
import 'package:herhealthconnect/Professional_Side/Professional_calender.dart';
import 'package:herhealthconnect/Professional_Side/Professional_chat.dart';
import 'package:herhealthconnect/Professional_Side/Professional_congrats_page.dart';
import 'package:herhealthconnect/Professional_Side/Professional_dashboard.dart';
import 'package:herhealthconnect/Professional_Side/Professional_edit_profile.dart';
import 'package:herhealthconnect/Professional_Side/Professional_event_week.dart';
import 'package:herhealthconnect/Professional_Side/Professional_language.dart';
import 'package:herhealthconnect/Professional_Side/Professional_profile.dart';
import 'package:herhealthconnect/Professional_Side/kyc2%20professional_information.dart';
import 'package:herhealthconnect/Screens/Authentications_Screens/login.dart';
import 'package:herhealthconnect/Screens/Authentications_Screens/sign_up.dart';
import 'package:herhealthconnect/Screens/Onboarding/Splash.dart';
import 'package:herhealthconnect/Screens/Onboarding/onboarding.dart';
import 'package:herhealthconnect/Screens/User_Dashboard/user_dashboard.dart';
import 'package:herhealthconnect/Screens/kyc/congrats_page.dart';
import 'package:herhealthconnect/Screens/kyc/kyc_1.dart';
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
    MaterialRoute(page: ProfessionalProfileScreen, initial: false),
    MaterialRoute(page: ProfessionalEditProfileScreen, initial: false),
    MaterialRoute(page: ProfessionalSignUpScreen, initial: false),
    MaterialRoute(page: ProfessionalDashboard, initial: false),
    MaterialRoute(page: ProfessionalAppointmentsScreen, initial: false),
    MaterialRoute(page: ProfessionalClientScreen, initial: false),
    MaterialRoute(page: ProfessionalCalendarScreen, initial: false),
    MaterialRoute(page: ProfessionalChatScreen, initial: false),
    MaterialRoute(page: ProfessionalLanguage, initial: false),
    MaterialRoute(page: ProfessionalCalendarEventScreen, initial: false),
    MaterialRoute(page: ProfessionalCongratsPage, initial: false),
    MaterialRoute(page: ProfessionalLoginPage, initial: false),
    MaterialRoute(page: ProfessionalResetSuccessfulScreen, initial: false),
    MaterialRoute(page: ProfessionalNewPasswordScreen, initial: false),
    MaterialRoute(page: ProfessionalForgotPassword, initial: false),
    MaterialRoute(page: CustomizeInterestsScreen, initial: false),
    MaterialRoute(page: ProfessionalInfoScreen, initial: false),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: SharedPreferencesService),
    LazySingleton(classType: AuthApi),
    LazySingleton(classType: WorkApi),
    LazySingleton(classType: NetworkService),
    LazySingleton(classType: AuthContractsImpl),
    LazySingleton(classType: AuthRepoImpl),
    LazySingleton(classType: AuthViewmodel),
    LazySingleton(classType: ProfileViewmodel),
  ],
  logger: StackedLogger(),
)
class App {}
