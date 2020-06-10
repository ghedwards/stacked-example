import 'package:my_app/app/locator.dart';
import 'package:my_app/app/router.gr.dart';
import 'package:my_app/services/auth_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends FutureViewModel<String> {

  final NavigationService _navigationService = locator<NavigationService>();
  final AuthService _authService = locator<AuthService>();
  
  Future<String> checkAuth() async {
    // await _authService.logout();
    bool authRequired = await _authService.isAuthRequired();
    String authToken = authRequired ? await _authService.getAuthToken() : "";
    if ( !authRequired || authToken != "" ) {
      await _navigationService.navigateTo(Routes.homeViewRoute);
    } else {
      await _navigationService.navigateTo(Routes.loginViewRoute);
    }
    return authToken;
  }

  @override
  Future<String> futureToRun() => checkAuth();

  Future navigateToHome() async {
    await _navigationService.navigateTo(Routes.homeViewRoute);
  }
  
}
