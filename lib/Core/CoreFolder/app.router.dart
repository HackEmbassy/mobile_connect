// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i25;
import 'package:flutter/material.dart';
import 'package:herhealthconnect/Professional_Side/Authentications_Screens/Professional_forgot_password.dart'
    as _i22;
import 'package:herhealthconnect/Professional_Side/Authentications_Screens/Professional_login.dart'
    as _i19;
import 'package:herhealthconnect/Professional_Side/Authentications_Screens/Professional_set_new_password.dart'
    as _i21;
import 'package:herhealthconnect/Professional_Side/Authentications_Screens/Professional_sign_up.dart'
    as _i10;
import 'package:herhealthconnect/Professional_Side/Authentications_Screens/Professional_successful.dart'
    as _i20;
import 'package:herhealthconnect/Professional_Side/kyc2%20professional_information.dart'
    as _i24;
import 'package:herhealthconnect/Professional_Side/Professional_appointments.dart'
    as _i12;
import 'package:herhealthconnect/Professional_Side/Professional_calender.dart'
    as _i14;
import 'package:herhealthconnect/Professional_Side/Professional_chat.dart'
    as _i15;
import 'package:herhealthconnect/Professional_Side/Professional_Client.dart'
    as _i13;
import 'package:herhealthconnect/Professional_Side/Professional_congrats_page.dart'
    as _i18;
import 'package:herhealthconnect/Professional_Side/Professional_dashboard.dart'
    as _i11;
import 'package:herhealthconnect/Professional_Side/Professional_edit_profile.dart'
    as _i9;
import 'package:herhealthconnect/Professional_Side/Professional_event_week.dart'
    as _i17;
import 'package:herhealthconnect/Professional_Side/Professional_language.dart'
    as _i16;
import 'package:herhealthconnect/Professional_Side/Professional_profile.dart'
    as _i8;
import 'package:herhealthconnect/Screens/Authentications_Screens/login.dart'
    as _i4;
import 'package:herhealthconnect/Screens/Authentications_Screens/sign_up.dart'
    as _i7;
import 'package:herhealthconnect/Screens/kyc/congrats_page.dart' as _i6;
import 'package:herhealthconnect/Screens/kyc/kyc_1.dart' as _i23;
import 'package:herhealthconnect/Screens/Onboarding/onboarding.dart' as _i2;
import 'package:herhealthconnect/Screens/Onboarding/Splash.dart' as _i5;
import 'package:herhealthconnect/Screens/User_Dashboard/user_dashboard.dart'
    as _i3;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i26;

class Routes {
  static const onboardingScreen = '/onboarding-screen';

  static const userDashboard = '/user-dashboard';

  static const loginPage = '/login-page';

  static const splashScreen = '/splash-screen';

  static const congratsPage = '/congrats-page';

  static const signUpScreen = '/sign-up-screen';

  static const professionalProfileScreen = '/professional-profile-screen';

  static const professionalEditProfileScreen =
      '/professional-edit-profile-screen';

  static const professionalSignUpScreen = '/professional-sign-up-screen';

  static const professionalDashboard = '/professional-dashboard';

  static const professionalAppointmentsScreen =
      '/professional-appointments-screen';

  static const professionalClientScreen = '/professional-client-screen';

  static const professionalCalendarScreen = '/professional-calendar-screen';

  static const professionalChatScreen = '/professional-chat-screen';

  static const professionalLanguage = '/professional-language';

  static const professionalCalendarEventScreen =
      '/professional-calendar-event-screen';

  static const professionalCongratsPage = '/professional-congrats-page';

  static const professionalLoginPage = '/professional-login-page';

  static const professionalResetSuccessfulScreen =
      '/professional-reset-successful-screen';

  static const professionalNewPasswordScreen =
      '/professional-new-password-screen';

  static const professionalForgotPassword = '/professional-forgot-password';

  static const customizeInterestsScreen = '/customize-interests-screen';

  static const professionalInfoScreen = '/professional-info-screen';

  static const all = <String>{
    onboardingScreen,
    userDashboard,
    loginPage,
    splashScreen,
    congratsPage,
    signUpScreen,
    professionalProfileScreen,
    professionalEditProfileScreen,
    professionalSignUpScreen,
    professionalDashboard,
    professionalAppointmentsScreen,
    professionalClientScreen,
    professionalCalendarScreen,
    professionalChatScreen,
    professionalLanguage,
    professionalCalendarEventScreen,
    professionalCongratsPage,
    professionalLoginPage,
    professionalResetSuccessfulScreen,
    professionalNewPasswordScreen,
    professionalForgotPassword,
    customizeInterestsScreen,
    professionalInfoScreen,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.onboardingScreen,
      page: _i2.OnboardingScreen,
    ),
    _i1.RouteDef(
      Routes.userDashboard,
      page: _i3.UserDashboard,
    ),
    _i1.RouteDef(
      Routes.loginPage,
      page: _i4.LoginPage,
    ),
    _i1.RouteDef(
      Routes.splashScreen,
      page: _i5.SplashScreen,
    ),
    _i1.RouteDef(
      Routes.congratsPage,
      page: _i6.CongratsPage,
    ),
    _i1.RouteDef(
      Routes.signUpScreen,
      page: _i7.SignUpScreen,
    ),
    _i1.RouteDef(
      Routes.professionalProfileScreen,
      page: _i8.ProfessionalProfileScreen,
    ),
    _i1.RouteDef(
      Routes.professionalEditProfileScreen,
      page: _i9.ProfessionalEditProfileScreen,
    ),
    _i1.RouteDef(
      Routes.professionalSignUpScreen,
      page: _i10.ProfessionalSignUpScreen,
    ),
    _i1.RouteDef(
      Routes.professionalDashboard,
      page: _i11.ProfessionalDashboard,
    ),
    _i1.RouteDef(
      Routes.professionalAppointmentsScreen,
      page: _i12.ProfessionalAppointmentsScreen,
    ),
    _i1.RouteDef(
      Routes.professionalClientScreen,
      page: _i13.ProfessionalClientScreen,
    ),
    _i1.RouteDef(
      Routes.professionalCalendarScreen,
      page: _i14.ProfessionalCalendarScreen,
    ),
    _i1.RouteDef(
      Routes.professionalChatScreen,
      page: _i15.ProfessionalChatScreen,
    ),
    _i1.RouteDef(
      Routes.professionalLanguage,
      page: _i16.ProfessionalLanguage,
    ),
    _i1.RouteDef(
      Routes.professionalCalendarEventScreen,
      page: _i17.ProfessionalCalendarEventScreen,
    ),
    _i1.RouteDef(
      Routes.professionalCongratsPage,
      page: _i18.ProfessionalCongratsPage,
    ),
    _i1.RouteDef(
      Routes.professionalLoginPage,
      page: _i19.ProfessionalLoginPage,
    ),
    _i1.RouteDef(
      Routes.professionalResetSuccessfulScreen,
      page: _i20.ProfessionalResetSuccessfulScreen,
    ),
    _i1.RouteDef(
      Routes.professionalNewPasswordScreen,
      page: _i21.ProfessionalNewPasswordScreen,
    ),
    _i1.RouteDef(
      Routes.professionalForgotPassword,
      page: _i22.ProfessionalForgotPassword,
    ),
    _i1.RouteDef(
      Routes.customizeInterestsScreen,
      page: _i23.CustomizeInterestsScreen,
    ),
    _i1.RouteDef(
      Routes.professionalInfoScreen,
      page: _i24.ProfessionalInfoScreen,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.OnboardingScreen: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.OnboardingScreen(),
        settings: data,
      );
    },
    _i3.UserDashboard: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.UserDashboard(),
        settings: data,
      );
    },
    _i4.LoginPage: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.LoginPage(),
        settings: data,
      );
    },
    _i5.SplashScreen: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.SplashScreen(),
        settings: data,
      );
    },
    _i6.CongratsPage: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.CongratsPage(),
        settings: data,
      );
    },
    _i7.SignUpScreen: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.SignUpScreen(),
        settings: data,
      );
    },
    _i8.ProfessionalProfileScreen: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.ProfessionalProfileScreen(),
        settings: data,
      );
    },
    _i9.ProfessionalEditProfileScreen: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.ProfessionalEditProfileScreen(),
        settings: data,
      );
    },
    _i10.ProfessionalSignUpScreen: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.ProfessionalSignUpScreen(),
        settings: data,
      );
    },
    _i11.ProfessionalDashboard: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.ProfessionalDashboard(),
        settings: data,
      );
    },
    _i12.ProfessionalAppointmentsScreen: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.ProfessionalAppointmentsScreen(),
        settings: data,
      );
    },
    _i13.ProfessionalClientScreen: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i13.ProfessionalClientScreen(),
        settings: data,
      );
    },
    _i14.ProfessionalCalendarScreen: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i14.ProfessionalCalendarScreen(),
        settings: data,
      );
    },
    _i15.ProfessionalChatScreen: (data) {
      final args = data.getArgs<ProfessionalChatScreenArguments>(
        orElse: () => const ProfessionalChatScreenArguments(),
      );
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => _i15.ProfessionalChatScreen(key: args.key),
        settings: data,
      );
    },
    _i16.ProfessionalLanguage: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i16.ProfessionalLanguage(),
        settings: data,
      );
    },
    _i17.ProfessionalCalendarEventScreen: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i17.ProfessionalCalendarEventScreen(),
        settings: data,
      );
    },
    _i18.ProfessionalCongratsPage: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i18.ProfessionalCongratsPage(),
        settings: data,
      );
    },
    _i19.ProfessionalLoginPage: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i19.ProfessionalLoginPage(),
        settings: data,
      );
    },
    _i20.ProfessionalResetSuccessfulScreen: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i20.ProfessionalResetSuccessfulScreen(),
        settings: data,
      );
    },
    _i21.ProfessionalNewPasswordScreen: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i21.ProfessionalNewPasswordScreen(),
        settings: data,
      );
    },
    _i22.ProfessionalForgotPassword: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i22.ProfessionalForgotPassword(),
        settings: data,
      );
    },
    _i23.CustomizeInterestsScreen: (data) {
      final args =
          data.getArgs<CustomizeInterestsScreenArguments>(nullOk: false);
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => _i23.CustomizeInterestsScreen(
            key: args.key,
            fname: args.fname,
            email: args.email,
            password: args.password,
            age: args.age,
            state: args.state,
            city: args.city,
            phone: args.phone,
            gender: args.gender,
            long: args.long,
            latitude: args.latitude),
        settings: data,
      );
    },
    _i24.ProfessionalInfoScreen: (data) {
      final args = data.getArgs<ProfessionalInfoScreenArguments>(nullOk: false);
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => _i24.ProfessionalInfoScreen(
            key: args.key,
            fname: args.fname,
            email: args.email,
            state: args.state,
            city: args.city,
            address: args.address,
            phone: args.phone,
            lat: args.lat,
            long: args.long,
            password: args.password),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class ProfessionalChatScreenArguments {
  const ProfessionalChatScreenArguments({this.key});

  final _i25.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant ProfessionalChatScreenArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class CustomizeInterestsScreenArguments {
  const CustomizeInterestsScreenArguments({
    this.key,
    required this.fname,
    required this.email,
    required this.password,
    required this.age,
    required this.state,
    required this.city,
    required this.phone,
    required this.gender,
    required this.long,
    required this.latitude,
  });

  final _i25.Key? key;

  final String fname;

  final String email;

  final String password;

  final String age;

  final String state;

  final String city;

  final String phone;

  final String gender;

  final String long;

  final String latitude;

  @override
  String toString() {
    return '{"key": "$key", "fname": "$fname", "email": "$email", "password": "$password", "age": "$age", "state": "$state", "city": "$city", "phone": "$phone", "gender": "$gender", "long": "$long", "latitude": "$latitude"}';
  }

  @override
  bool operator ==(covariant CustomizeInterestsScreenArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.fname == fname &&
        other.email == email &&
        other.password == password &&
        other.age == age &&
        other.state == state &&
        other.city == city &&
        other.phone == phone &&
        other.gender == gender &&
        other.long == long &&
        other.latitude == latitude;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        fname.hashCode ^
        email.hashCode ^
        password.hashCode ^
        age.hashCode ^
        state.hashCode ^
        city.hashCode ^
        phone.hashCode ^
        gender.hashCode ^
        long.hashCode ^
        latitude.hashCode;
  }
}

class ProfessionalInfoScreenArguments {
  const ProfessionalInfoScreenArguments({
    this.key,
    required this.fname,
    required this.email,
    required this.state,
    required this.city,
    required this.address,
    required this.phone,
    required this.lat,
    required this.long,
    required this.password,
  });

  final _i25.Key? key;

  final String fname;

  final String email;

  final String state;

  final String city;

  final String address;

  final String phone;

  final String lat;

  final String long;

  final String password;

  @override
  String toString() {
    return '{"key": "$key", "fname": "$fname", "email": "$email", "state": "$state", "city": "$city", "address": "$address", "phone": "$phone", "lat": "$lat", "long": "$long", "password": "$password"}';
  }

  @override
  bool operator ==(covariant ProfessionalInfoScreenArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.fname == fname &&
        other.email == email &&
        other.state == state &&
        other.city == city &&
        other.address == address &&
        other.phone == phone &&
        other.lat == lat &&
        other.long == long &&
        other.password == password;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        fname.hashCode ^
        email.hashCode ^
        state.hashCode ^
        city.hashCode ^
        address.hashCode ^
        phone.hashCode ^
        lat.hashCode ^
        long.hashCode ^
        password.hashCode;
  }
}

extension NavigatorStateExtension on _i26.NavigationService {
  Future<dynamic> navigateToOnboardingScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.onboardingScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToUserDashboard([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.userDashboard,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginPage([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginPage,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSplashScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.splashScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCongratsPage([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.congratsPage,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSignUpScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.signUpScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfessionalProfileScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.professionalProfileScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfessionalEditProfileScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.professionalEditProfileScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfessionalSignUpScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.professionalSignUpScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfessionalDashboard([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.professionalDashboard,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfessionalAppointmentsScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.professionalAppointmentsScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfessionalClientScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.professionalClientScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfessionalCalendarScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.professionalCalendarScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfessionalChatScreen({
    _i25.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.professionalChatScreen,
        arguments: ProfessionalChatScreenArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfessionalLanguage([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.professionalLanguage,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfessionalCalendarEventScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.professionalCalendarEventScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfessionalCongratsPage([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.professionalCongratsPage,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfessionalLoginPage([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.professionalLoginPage,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfessionalResetSuccessfulScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.professionalResetSuccessfulScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfessionalNewPasswordScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.professionalNewPasswordScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfessionalForgotPassword([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.professionalForgotPassword,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCustomizeInterestsScreen({
    _i25.Key? key,
    required String fname,
    required String email,
    required String password,
    required String age,
    required String state,
    required String city,
    required String phone,
    required String gender,
    required String long,
    required String latitude,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.customizeInterestsScreen,
        arguments: CustomizeInterestsScreenArguments(
            key: key,
            fname: fname,
            email: email,
            password: password,
            age: age,
            state: state,
            city: city,
            phone: phone,
            gender: gender,
            long: long,
            latitude: latitude),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfessionalInfoScreen({
    _i25.Key? key,
    required String fname,
    required String email,
    required String state,
    required String city,
    required String address,
    required String phone,
    required String lat,
    required String long,
    required String password,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.professionalInfoScreen,
        arguments: ProfessionalInfoScreenArguments(
            key: key,
            fname: fname,
            email: email,
            state: state,
            city: city,
            address: address,
            phone: phone,
            lat: lat,
            long: long,
            password: password),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithOnboardingScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.onboardingScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithUserDashboard([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.userDashboard,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginPage([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginPage,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSplashScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.splashScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCongratsPage([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.congratsPage,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSignUpScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.signUpScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfessionalProfileScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.professionalProfileScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfessionalEditProfileScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.professionalEditProfileScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfessionalSignUpScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.professionalSignUpScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfessionalDashboard([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.professionalDashboard,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfessionalAppointmentsScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.professionalAppointmentsScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfessionalClientScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.professionalClientScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfessionalCalendarScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.professionalCalendarScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfessionalChatScreen({
    _i25.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.professionalChatScreen,
        arguments: ProfessionalChatScreenArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfessionalLanguage([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.professionalLanguage,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfessionalCalendarEventScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.professionalCalendarEventScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfessionalCongratsPage([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.professionalCongratsPage,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfessionalLoginPage([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.professionalLoginPage,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfessionalResetSuccessfulScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.professionalResetSuccessfulScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfessionalNewPasswordScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.professionalNewPasswordScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfessionalForgotPassword([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.professionalForgotPassword,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCustomizeInterestsScreen({
    _i25.Key? key,
    required String fname,
    required String email,
    required String password,
    required String age,
    required String state,
    required String city,
    required String phone,
    required String gender,
    required String long,
    required String latitude,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.customizeInterestsScreen,
        arguments: CustomizeInterestsScreenArguments(
            key: key,
            fname: fname,
            email: email,
            password: password,
            age: age,
            state: state,
            city: city,
            phone: phone,
            gender: gender,
            long: long,
            latitude: latitude),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfessionalInfoScreen({
    _i25.Key? key,
    required String fname,
    required String email,
    required String state,
    required String city,
    required String address,
    required String phone,
    required String lat,
    required String long,
    required String password,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.professionalInfoScreen,
        arguments: ProfessionalInfoScreenArguments(
            key: key,
            fname: fname,
            email: email,
            state: state,
            city: city,
            address: address,
            phone: phone,
            lat: lat,
            long: long,
            password: password),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
