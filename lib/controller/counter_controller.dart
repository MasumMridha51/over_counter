import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

import '../widgets/clay_round_button.dart';

class CounterController extends GetxController {

  // Observable State is here.
  RxBool updateBallCardShow = false.obs;

  RxList<String> runs = ['2', '6', '8'].obs;

  // add 0 run in history
  dynamic add0History() {
    String run = '15';
    runs.insert(0, run);
  }

  dynamic? add1History() {
    String run = '1';
    runs.add(run);
  }

  getRunForOver() {
    for (var i = 0; i < runs.length; i++) {
      // for(var j = 0; j < runs[i]; j++){
      //   return Container(
      //     margin: const EdgeInsets.symmetric(
      //       vertical: 12,
      //     ),
      //     child: ClayRoundButton(
      //       buttonInputField: Center(child: Text('${runs[i].obs}')),
      //       rightSpace: const EdgeInsets.only(right: 2),
      //     ),
      //   );
      // }
    }
  }

  var test = '5'.obs;
}
