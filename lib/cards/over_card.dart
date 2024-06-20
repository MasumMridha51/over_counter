import 'package:clay_containers/widgets/clay_container.dart';
import 'package:clay_containers/widgets/clay_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/counter_controller.dart';
import '../widgets/clay_round_button.dart';

class OverCard extends StatelessWidget {
  OverCard({super.key});
  CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    Color baseColor = const Color(0xFFF2F2F2);
    return ClayContainer(
      color: baseColor,
      height: 100,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(5),
            child: ClayText("This Over :",
                emboss: true, depth: 95, spread: 1, size: 20),
          ),
          Expanded(
            child: Obx(() {
              return Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 12,
                    ),
                    child: ClayRoundButton(
                      buttonInputField:
                          Center(child: Text('${counterController.test}')),
                      rightSpace: EdgeInsets.only(right: 2),
                    ),
                  ),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}
