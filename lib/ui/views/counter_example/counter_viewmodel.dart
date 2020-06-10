import 'package:stacked/stacked.dart';

class CounterViewModel extends BaseViewModel {
  String _title = 'Counter View';
  String get title => '$_title $_counter';

  int _counter = 0;
  int get counter => _counter;

  void updateCounter() {
    _counter++;
    notifyListeners();
  }
}
