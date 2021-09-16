import 'dart:math';

class Utils {
  getRandomNumber() {
    return Random().nextInt(5) +
        1; // have this range here, because of the limited images in assets
  }
}
