import 'package:clay_containers/widgets/clay_container.dart';
import 'package:clay_containers/widgets/clay_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:over_counter/widgets/clay_round_button.dart';

import '../controller/counter_controller.dart';

class UpdateBallCard extends StatelessWidget {
  UpdateBallCard({super.key});

  CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    Color baseColor = const Color(0xFFF2F2F2);
    return ClayContainer(
      color: baseColor,
      height: 180,
      width: double.infinity,
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(5),
                child: ClayText("Update Ball :",
                    emboss: true, depth: 95, spread: 1, size: 20),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClayRoundButton(
                buttonInputField: TextButton(
                  onPressed: () {
                    counterController.updateBallCardShow.value =
                        !counterController.updateBallCardShow.value;
                    counterController.add0History();
                  },
                  child: const Text('0'),
                ),
                rightSpace: EdgeInsets.zero,
              ),
              const SizedBox(
                width: 18,
              ),
              ClayRoundButton(
                buttonInputField: TextButton(
                  onPressed: () {
                    counterController.updateBallCardShow.value =
                        !counterController.updateBallCardShow.value;
                    counterController.add1History();
                  },
                  child: const Text('1'),
                ),
                rightSpace: EdgeInsets.zero,
              ),
              const SizedBox(
                width: 18,
              ),
              ClayRoundButton(
                buttonInputField: TextButton(
                  onPressed: () {
                    counterController.updateBallCardShow.value =
                        !counterController.updateBallCardShow.value;
                    counterController.add2History();
                  },
                  child: const Text('2'),
                ),
                rightSpace: EdgeInsets.zero,
              ),
              const SizedBox(
                width: 18,
              ),
              ClayRoundButton(
                buttonInputField: TextButton(
                  onPressed: () {
                    counterController.updateBallCardShow.value =
                        !counterController.updateBallCardShow.value;
                    counterController.add3History();
                  },
                  child: const Text('3'),
                ),
                rightSpace: EdgeInsets.zero,
              ),
              const SizedBox(
                width: 18,
              ),
              ClayRoundButton(
                buttonInputField: TextButton(
                  onPressed: () {
                    counterController.updateBallCardShow.value =
                        !counterController.updateBallCardShow.value;
                    counterController.add4History();
                  },
                  child: const Text('4'),
                ),
                rightSpace: EdgeInsets.zero,
              ),
              const SizedBox(
                width: 18,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClayRoundButton(
                buttonInputField: TextButton(
                  onPressed: () {
                    counterController.updateBallCardShow.value =
                        !counterController.updateBallCardShow.value;
                    counterController.add5History();
                  },
                  child: const Text('5'),
                ),
                rightSpace: EdgeInsets.zero,
              ),
              const SizedBox(
                width: 18,
              ),
              ClayRoundButton(
                buttonInputField: TextButton(
                  onPressed: () {
                    counterController.updateBallCardShow.value =
                        !counterController.updateBallCardShow.value;
                    counterController.add6History();
                  },
                  child: const Text('6'),
                ),
                rightSpace: EdgeInsets.zero,
              ),
              const SizedBox(
                width: 18,
              ),
              ClayRoundButton(
                buttonInputField: TextButton(
                  onPressed: () {
                    counterController.updateBallCardShow.value =
                        !counterController.updateBallCardShow.value;
                    counterController.addwHistory();
                  },
                  child: Text(
                    'W',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                rightSpace: EdgeInsets.zero,
              ),
              const SizedBox(
                width: 18,
              ),
              ClayRoundButton(
                buttonInputField: TextButton(
                  onPressed: () {
                    counterController.updateBallCardShow.value =
                        !counterController.updateBallCardShow.value;
                    counterController.add1WDHistory();
                  },
                  child: const Text(
                    '1WD',
                    style: TextStyle(fontSize: 7),
                  ),
                ),
                rightSpace: EdgeInsets.zero,
              ),
              const SizedBox(
                width: 18,
              ),
              ClayRoundButton(
                buttonInputField: TextButton(
                  onPressed: () {
                    counterController.updateBallCardShow.value =
                        !counterController.updateBallCardShow.value;
                    counterController.add1NBHistory();
                  },
                  child: const Text(
                    '1NB',
                    style: TextStyle(fontSize: 7),
                  ),
                ),
                rightSpace: EdgeInsets.zero,
              ),
              const SizedBox(
                width: 18,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
