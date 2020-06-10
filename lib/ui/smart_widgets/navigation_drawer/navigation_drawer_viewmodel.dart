import 'package:my_app/app/locator.dart';
import 'package:my_app/app/router.gr.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class NavigationDrawerViewModel extends BaseViewModel {
  
  final NavigationService _navigationService = locator<NavigationService>();

  List drawerItems = [
    {
      "name": "Home",
      "route": Routes.homeViewRoute
    },
    {
      "name": "Counter Example",
      "route": Routes.counterViewRoute
    }
  ];

  void navigateTo(item) {
      _navigationService.navigateTo(item);
  }

}
