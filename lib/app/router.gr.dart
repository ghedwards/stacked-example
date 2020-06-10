// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:my_app/ui/views/startup/startup_view.dart';
import 'package:my_app/ui/views/home/home_view.dart';
import 'package:my_app/ui/views/login/login_view.dart';
import 'package:my_app/ui/views/counter_example/counter_view.dart';

abstract class Routes {
  static const startupViewRoute = '/';
  static const homeViewRoute = '/home-view-route';
  static const loginViewRoute = '/login-view-route';
  static const counterViewRoute = '/counter-view-route';
}

class Router extends RouterBase {
  //This will probably be removed in future versions
  //you should call ExtendedNavigator.ofRouter<Router>() directly
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.startupViewRoute:
        if (hasInvalidArgs<StartupViewArguments>(args)) {
          return misTypedArgsRoute<StartupViewArguments>(args);
        }
        final typedArgs =
            args as StartupViewArguments ?? StartupViewArguments();
        return MaterialPageRoute<dynamic>(
          builder: (_) => StartupView(key: typedArgs.key),
          settings: settings,
        );
      case Routes.homeViewRoute:
        if (hasInvalidArgs<HomeViewArguments>(args)) {
          return misTypedArgsRoute<HomeViewArguments>(args);
        }
        final typedArgs = args as HomeViewArguments ?? HomeViewArguments();
        return MaterialPageRoute<dynamic>(
          builder: (_) => HomeView(key: typedArgs.key),
          settings: settings,
        );
      case Routes.loginViewRoute:
        if (hasInvalidArgs<LoginViewArguments>(args)) {
          return misTypedArgsRoute<LoginViewArguments>(args);
        }
        final typedArgs = args as LoginViewArguments ?? LoginViewArguments();
        return MaterialPageRoute<dynamic>(
          builder: (_) => LoginView(key: typedArgs.key),
          settings: settings,
        );
      case Routes.counterViewRoute:
        if (hasInvalidArgs<CounterViewArguments>(args)) {
          return misTypedArgsRoute<CounterViewArguments>(args);
        }
        final typedArgs =
            args as CounterViewArguments ?? CounterViewArguments();
        return MaterialPageRoute<dynamic>(
          builder: (_) => CounterView(key: typedArgs.key),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

//**************************************************************************
// Arguments holder classes
//***************************************************************************

//StartupView arguments holder class
class StartupViewArguments {
  final Key key;
  StartupViewArguments({this.key});
}

//HomeView arguments holder class
class HomeViewArguments {
  final Key key;
  HomeViewArguments({this.key});
}

//LoginView arguments holder class
class LoginViewArguments {
  final Key key;
  LoginViewArguments({this.key});
}

//CounterView arguments holder class
class CounterViewArguments {
  final Key key;
  CounterViewArguments({this.key});
}
