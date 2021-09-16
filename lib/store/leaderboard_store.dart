import 'package:mobx/mobx.dart';

import 'package:ui_test/models/user_stats.dart';

part 'leaderboard_store.g.dart';

class LeaderboardStore = _LeaderboardStore with _$LeaderboardStore;

abstract class _LeaderboardStore with Store {
  @observable
  late List<UserStats> listUserStats;

  @observable
  int segmentSelected = 0;

  _LeaderboardStore({
    required this.listUserStats,
  });

  @action
  changeSelectedSegment(int value) {
    segmentSelected = value;
  }
}
