import 'package:flutter/material.dart';
import 'package:my_app/ui/smart_widgets/navigation_drawer/navigation_drawer.dart';
import 'package:stacked/stacked.dart';

import 'counter_viewmodel.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CounterViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
            title: Text("Counter Example"),
        ),
        drawer: NavigationDrawer(),
        body: Center(
          child: Text(model.title),
        ),
        floatingActionButton:
            FloatingActionButton(onPressed: model.updateCounter),
      ),
      viewModelBuilder: () => CounterViewModel(),
    );
  }
}
