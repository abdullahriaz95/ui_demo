// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leaderboard_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LeaderboardStore on _LeaderboardStore, Store {
  final _$listUserStatsAtom = Atom(name: '_LeaderboardStore.listUserStats');

  @override
  List<UserStats> get listUserStats {
    _$listUserStatsAtom.reportRead();
    return super.listUserStats;
  }

  @override
  set listUserStats(List<UserStats> value) {
    _$listUserStatsAtom.reportWrite(value, super.listUserStats, () {
      super.listUserStats = value;
    });
  }

  final _$segmentSelectedAtom = Atom(name: '_LeaderboardStore.segmentSelected');

  @override
  int get segmentSelected {
    _$segmentSelectedAtom.reportRead();
    return super.segmentSelected;
  }

  @override
  set segmentSelected(int value) {
    _$segmentSelectedAtom.reportWrite(value, super.segmentSelected, () {
      super.segmentSelected = value;
    });
  }

  final _$_LeaderboardStoreActionController =
      ActionController(name: '_LeaderboardStore');

  @override
  dynamic changeSelectedSegment(int value) {
    final _$actionInfo = _$_LeaderboardStoreActionController.startAction(
        name: '_LeaderboardStore.changeSelectedSegment');
    try {
      return super.changeSelectedSegment(value);
    } finally {
      _$_LeaderboardStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listUserStats: ${listUserStats},
segmentSelected: ${segmentSelected}
    ''';
  }
}
