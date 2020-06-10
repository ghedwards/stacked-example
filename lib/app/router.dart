import 'package:auto_route/auto_route_annotations.dart';
import 'package:my_app/ui/views/counter_example/counter_view.dart';
import 'package:my_app/ui/views/home/home_view.dart';
import 'package:my_app/ui/views/login/login_view.dart';
import 'package:my_app/ui/views/startup/startup_view.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  StartupView startupViewRoute;
  HomeView homeViewRoute;
  LoginView loginViewRoute;
  CounterView counterViewRoute;
}
