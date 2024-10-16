// import 'package:BillTop/Core/CoreFolder/app.router.dart';
// import 'package:BillTop/Core/router/custom_router.dart';
import 'package:flutter/material.dart';
import 'package:herhealthconnect/Core/CoreFolder/app.locator.dart';
import 'package:herhealthconnect/Screens/User_Dashboard/user_dashboard.dart';
import 'package:stacked_services/stacked_services.dart';

class PageRouter {
  static final _navigation = locator<NavigationService>();
  static NavigationService get navigation => _navigation;

  static Future<void> pushNamed(String routeName, {dynamic args}) async =>
      await _navigation.navigateTo(routeName, arguments: args);

  static Future<void> pushWidget(Widget view, {dynamic args}) async =>
      await _navigation.navigateToView(view);

  static bool pop([dynamic result]) => _navigation.back(result: result);

  static void popToRoot([String routeName = '']) =>
      _navigation.popUntil((route) => route.settings.name == routeName);

  static Future<void> pushReplacement(String routeName, {dynamic args}) async =>
      await _navigation.clearStackAndShow(routeName, arguments: args);

  static Future<void> pushReplacementWidget(Widget view,
          {dynamic args}) async =>
      await _navigation.clearStackAndShowView(view, arguments: args);

  static Future<void> pushReplacementWithAnimation(Widget child,
          {dynamic args,
          bool? opaque,
          Transition? transition,
          bool? popGesture}) async =>
      await _navigation.replaceWithTransition(child,
          opaque: opaque, transitionStyle: transition, popGesture: popGesture);

  static Future<dynamic> pushWithAnimation(Widget child,
          {dynamic args, Transition? transition, bool? popGesture}) async =>
      await _navigation.navigateToView(child,
          curve: Curves.easeIn,
          transitionStyle: transition,
          popGesture: popGesture);

  // void _sadd() async {
  //   await _navigation.navigateTo(
  //     Routes.accountStatementView,
  //     transition: CustomRouteTransition.sharedAxis,
  //   );
  // }

  static Future<void> navigateTo(String routeName,
          {dynamic args, dynamic transition}) async =>
      await _navigation.navigateToView(const UserDashboard(),
          arguments: args, opaque: false);
}
