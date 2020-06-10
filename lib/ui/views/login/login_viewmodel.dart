import 'package:my_app/app/locator.dart';
import 'package:my_app/app/router.gr.dart';
import 'package:my_app/services/auth_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {

  final AuthService _authService = locator<AuthService>();
  final NavigationService _navigationService = locator<NavigationService>();

  String _email;
  String _password;

  void updateEmail(String value) {
      _email = value;
  }

  void updatePassword(String value) {
      _password = value;
  }

  Future<void> login() async {

      bool temp = await _authService.login(username: _email, password: _password);

      if ( temp ) {
          await _navigationService.navigateTo(Routes.startupViewRoute);
      }

  }

}
