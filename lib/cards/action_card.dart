import 'package:clay_containers/widgets/clay_container.dart';
import 'package:clay_containers/widgets/clay_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/counter_controller.dart';

class ActionCard extends StatelessWidget {
  ActionCard({super.key});

  CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    Color baseColor = const Color(0xFFF2F2F2);
    return ClayContainer(
      color: baseColor,
      height: 100,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: ClayText(
                          "Oh God, if there be cricket in heaven, let there also be rain.",
                          emboss: true,
                          depth: 95,
                          spread: 1,
                          size: 20),
                    ),
                  ],
                ),
              ),
              // Obx(() {
              Obx(() {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: ClayContainer(
                        color: const Color(0xFFF2F2F2),
                        height: 80,
                        width: 80,
                        borderRadius: 50,
                        depth: 100,
                        spread: 20,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Visibility(
                            visible:
                                !counterController.updateBallCardShow.value,
                            child: IconButton(
                              onPressed: () {
                                counterController.updateBallCardShow.value =
                                    !counterController.updateBallCardShow.value;
                              },
                              icon: const Icon(
                                Icons.navigate_next_rounded,
                                size: 50,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }),
              // }),
            ],
          ),
        ],
      ),
    );
  }
}
