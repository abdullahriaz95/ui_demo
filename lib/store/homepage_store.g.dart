// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homepage_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomepageStore on _HomepageStore, Store {
  final _$appBarItemSelectedAtom =
      Atom(name: '_HomepageStore.appBarItemSelected');

  @override
  int get appBarItemSelected {
    _$appBarItemSelectedAtom.reportRead();
    return super.appBarItemSelected;
  }

  @override
  set appBarItemSelected(int value) {
    _$appBarItemSelectedAtom.reportWrite(value, super.appBarItemSelected, () {
      super.appBarItemSelected = value;
    });
  }

  final _$_HomepageStoreActionController =
      ActionController(name: '_HomepageStore');

  @override
  dynamic changeAppBarSelectedItem(int value) {
    final _$actionInfo = _$_HomepageStoreActionController.startAction(
        name: '_HomepageStore.changeAppBarSelectedItem');
    try {
      return super.changeAppBarSelectedItem(value);
    } finally {
      _$_HomepageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
appBarItemSelected: ${appBarItemSelected}
    ''';
  }
}
