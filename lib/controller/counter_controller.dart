import 'package:get/get.dart';

class CounterController extends GetxController {
  // Observable State
  RxBool updateBallCardShow = true.obs;

  RxBool showUpdateCard() {
    updateBallCardShow = true.obs;
    print(updateBallCardShow);
    return updateBallCardShow;
  }
}
