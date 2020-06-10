import 'package:flutter/material.dart';
import 'package:my_app/ui/smart_widgets/navigation_drawer/navigation_drawer.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
          appBar: AppBar(
            title: Text("Home"),
          ),
          drawer: NavigationDrawer()
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
