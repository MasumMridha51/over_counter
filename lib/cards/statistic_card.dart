import 'package:clay_containers/widgets/clay_container.dart';
import 'package:clay_containers/widgets/clay_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:over_counter/widgets/clay_text_field.dart';

import '../controller/counter_controller.dart';

class StatisticCard extends StatelessWidget {
  StatisticCard({super.key});

  CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    Color baseColor = const Color(0xFFF2F2F2);
    return ClayContainer(
      color: baseColor,
      height: 200,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: ClayText("Total Over",
                        emboss: true, depth: 95, spread: 1, size: 20),
                  ),
                  Obx(() {
                    return ClayTextField(
                      intValue:
                          '${counterController.overCalculation()}.${counterController.balls.length}',
                    );
                  })
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: ClayText("Total Run",
                        emboss: true, depth: 95, spread: 1, size: 20),
                  ),
                  Obx(() {
                    return ClayTextField(
                      intValue: '${counterController.totalRun}',
                    );
                  })
                ],
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: ClayText("Total Wicket",
                        emboss: true, depth: 95, spread: 1, size: 20),
                  ),
                  Obx(() {
                    return ClayTextField(
                      intValue: '${counterController.totalWicket}',
                    );
                  }),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: ClayText("Extra Run",
                        emboss: true, depth: 95, spread: 1, size: 20),
                  ),
                  Obx(() {
                    return ClayTextField(
                      intValue: '${counterController.totalExtraRun}',
                    );
                  }),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
