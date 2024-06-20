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
            children: [
              ClayRoundButton(
                buttonInputField: TextButton(
                  onPressed: () {
                    counterController.updateBallCardShow.value =
                        !counterController.updateBallCardShow.value;
                    counterController.add0History();
                    counterController.getRunForOver();
                    print(counterController.runs);
                  },
                  child: const Text('0'),
                ),
                rightSpace: EdgeInsets.zero,
              ),
              const SizedBox(
                width: 18,
              ),
              const ClayRoundButton(
                buttonInputField: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  child: Text('1'),
                ),
                rightSpace: EdgeInsets.zero,
              ),
              SizedBox(
                width: 18,
              ),
              ClayRoundButton(
                buttonInputField: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  child: Text('2'),
                ),
                rightSpace: EdgeInsets.zero,
              ),
              SizedBox(
                width: 18,
              ),
              ClayRoundButton(
                buttonInputField: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  child: Text('3'),
                ),
                rightSpace: EdgeInsets.zero,
              ),
              SizedBox(
                width: 18,
              ),
              ClayRoundButton(
                buttonInputField: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  child: Text('4'),
                ),
                rightSpace: EdgeInsets.zero,
              ),
              SizedBox(
                width: 18,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClayRoundButton(
                buttonInputField: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  child: Text('5'),
                ),
                rightSpace: EdgeInsets.zero,
              ),
              SizedBox(
                width: 18,
              ),
              ClayRoundButton(
                buttonInputField: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  child: Text('6'),
                ),
                rightSpace: EdgeInsets.zero,
              ),
              SizedBox(
                width: 18,
              ),
              ClayRoundButton(
                buttonInputField: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  child: Text('W'),
                ),
                rightSpace: EdgeInsets.zero,
              ),
              SizedBox(
                width: 18,
              ),
              ClayRoundButton(
                buttonInputField: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 2),
                  child: Text('1WD'),
                ),
                rightSpace: EdgeInsets.zero,
              ),
              SizedBox(
                width: 18,
              ),
              ClayRoundButton(
                buttonInputField: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                  child: Text('1NB'),
                ),
                rightSpace: EdgeInsets.zero,
              ),
              SizedBox(
                width: 18,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
