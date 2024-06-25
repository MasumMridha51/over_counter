import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class CounterController extends GetxController {
  // Observable State is here.
  RxBool updateBallCardShow = false.obs;

  RxList<String> runs = [''].obs;
  RxList balls = [].obs;
  RxList overs = [].obs;

  RxInt totalWicket = 0.obs;
  RxInt totalExtraRun = 0.obs;
  RxInt totalRun = 0.obs;

  overCalculation() {
    if (balls.length == 6) {
      overs.add(1);
      balls.clear();
      return overs.length;
    } else {
      return overs.length;
    }
  }

  // add 0 run in history
  dynamic add0History() {
    String run = '0';
    if (runs.first == '') {
      runs.removeLast();
      runs.add(run);
      totalRun + 0;
      balls.add(1);
    } else {
      runs.add(run);
      totalRun + 0;
      balls.add(1);
    }
  }

  // add 1 run in history
  dynamic add1History() {
    String run = '1';
    if (runs.first == '') {
      runs.removeLast();
      runs.add(run);
      totalRun + 1;
      balls.add(1);
    } else {
      runs.add(run);
      totalRun + 1;
      balls.add(1);
    }
  }

  // add 2 run in history
  dynamic add2History() {
    String run = '2';
    if (runs.first == '') {
      runs.removeLast();
      runs.add(run);
      totalRun + 2;
      balls.add(1);
    } else {
      runs.add(run);
      totalRun + 2;
      balls.add(1);
    }
  }

  // add 3 run in history
  dynamic add3History() {
    String run = '3';
    if (runs.first == '') {
      runs.removeLast();
      runs.add(run);
      totalRun + 3;
      balls.add(1);
    } else {
      runs.add(run);
      totalRun + 3;
      balls.add(1);
    }
  }

  // add 4 run in history
  dynamic add4History() {
    String run = '4';
    if (runs.first == '') {
      runs.removeLast();
      runs.add(run);
      totalRun + 4;
      balls.add(1);
    } else {
      runs.add(run);
      totalRun + 4;
      balls.add(1);
    }
  }

  // add 5 run in history
  dynamic add5History() {
    String run = '5';
    if (runs.first == '') {
      runs.removeLast();
      runs.add(run);
      totalRun + 5;
      balls.add(1);
    } else {
      runs.add(run);
      totalRun + 5;
      balls.add(1);
    }
  }

  // add 6 run in history
  dynamic add6History() {
    String run = '6';
    if (runs.first == '') {
      runs.removeLast();
      runs.add(run);
      totalRun + 6;
      balls.add(1);
    } else {
      runs.add(run);
      totalRun + 6;
      balls.add(1);
    }
  }

  // add w run in history
  dynamic addwHistory() {
    String run = 'w';
    if (runs.first == '') {
      runs.removeLast();
      runs.add(run);
      totalWicket + 1;
      balls.add(1);
    } else {
      runs.add(run);
      totalWicket + 1;
      balls.add(1);
    }
  }

  // add 1WD run in history
  dynamic add1WDHistory() {
    String run = '1WD';
    if (runs.first == '') {
      runs.removeLast();
      runs.add(run);
      totalRun + 1;
      totalExtraRun + 1;
    } else {
      runs.add(run);
      totalRun + 1;
      totalExtraRun + 1;
    }
  }

  // add 1NB run in history
  dynamic add1NBHistory() {
    String run = '1NB';
    if (runs.first == '') {
      runs.removeLast();
      runs.add(run);
      totalRun + 1;
      totalExtraRun + 1;
    } else {
      runs.add(run);
      totalRun + 1;
      totalExtraRun + 1;
    }
  }

  // Restart Button
  restart() {
    runs.clear();
    overs.clear();
    balls.clear();
    totalWicket.value = 0;
    totalExtraRun.value = 0;
    totalRun.value = 0;
  }
}
