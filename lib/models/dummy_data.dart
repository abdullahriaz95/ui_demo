import 'package:ui_test/models/user_stats.dart';
import 'package:ui_test/utils.dart';

class DummyData {
  static List<UserStats> getListOfUserStats() {
    return [
      UserStats(
          name: 'Jason',
          showings: 12,
          increased: true,
          imageInAssets: 'assets/images/human_${Utils().getRandomNumber()}.jpg',
          showingsChanged: 3),
      UserStats(
          name: 'Emily West',
          showings: 22,
          increased: true,
          imageInAssets: 'assets/images/human_${Utils().getRandomNumber()}.jpg',
          showingsChanged: 4),
      UserStats(
          name: 'James Brown',
          showings: 24,
          increased: false,
          imageInAssets: 'assets/images/human_${Utils().getRandomNumber()}.jpg',
          showingsChanged: 5),
      UserStats(
          name: 'Carl Mason',
          showings: 25,
          increased: false,
          imageInAssets: 'assets/images/human_${Utils().getRandomNumber()}.jpg',
          showingsChanged: 8),
      UserStats(
          name: 'Cameron',
          showings: 27,
          increased: true,
          imageInAssets: 'assets/images/human_${Utils().getRandomNumber()}.jpg',
          showingsChanged: 1),
      UserStats(
          name: 'Henry',
          showings: 17,
          increased: true,
          imageInAssets: 'assets/images/human_${Utils().getRandomNumber()}.jpg',
          showingsChanged: 2),
    ];
  }
}
