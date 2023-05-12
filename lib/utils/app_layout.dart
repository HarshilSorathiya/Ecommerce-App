import 'package:get/get.dart';

class AppLayout {
  static get getScreenheight {
    return Get.height;
  }

  static get getScreenwidth {
    return Get.width;
  }

  static getHeightbyRatio(double ratio) {
    if (ratio >= 0 && ratio <= 1) {
      double x = getScreenheight * ratio;
      return x;
    }
  }
}
