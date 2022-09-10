import 'package:get/get.dart';

class Dimensions {
  // static double screenHeight = Get.context!.height;
  // static double screenWidth = Get.context!.width;

  // static double pageView = screenHeight / 3.11;

  // //683,4285714285714 its current screen height ->
  // //683,4285714285714 / 220 = 3.106493506493506
  // static double pageViewContainer = screenHeight / 3.11;

  // //683,4285714285714 its current screen height ->
  // //683,4285714285714 / 120 = 5,695238095238095 
  // static double pageViewTextContainer = screenHeight / 5.7;

  static final double _deviceScreenHeight = Get.context!.height;
  static final double _deviceScreenWidth = Get.context!.width;
  static const double _targetHeight = 683.4285714285714;

  static double getDimsHeight(double absoluteDimention) {
    return _deviceScreenHeight / (_targetHeight / absoluteDimention);
  }

  static double getDimsWidth(double absoluteDimention) {
    return _deviceScreenWidth / (_targetHeight / absoluteDimention);
  }
}
