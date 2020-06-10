import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'navigation_drawer_viewmodel.dart';

class NavigationDrawer extends StatelessWidget {

  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NavigationDrawerViewModel>.reactive(
        builder: (context, model, child) => Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Text(
                  "Menu",
                  style: TextStyle(color: Colors.white),
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: model.drawerItems.length,
                itemBuilder: (BuildContext context, int index) {
                  Map item = model.drawerItems[index];
                  return ListTile(
                    title: Text(item['name']),
                    onTap: () {
                      model.navigateTo(item['route']);
                    },
                  );
                },
              ),
            ],
          ),
        ),
        viewModelBuilder: () => NavigationDrawerViewModel());
  }
}
