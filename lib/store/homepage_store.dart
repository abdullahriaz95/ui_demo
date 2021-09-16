import 'package:mobx/mobx.dart';

part 'homepage_store.g.dart';

class HomepageStore = _HomepageStore with _$HomepageStore;

abstract class _HomepageStore with Store {
  @observable
  int appBarItemSelected = 0;

  @action
  changeAppBarSelectedItem(int value) {
    appBarItemSelected = value;
  }
}
