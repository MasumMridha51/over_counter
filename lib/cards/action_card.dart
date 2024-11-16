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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          'assets/logo/counter-432x432.png', // Path to your logo
          width: 150, // Adjust the size of the logo
          height: 150,
        ),
        ClayContainer(
          color: baseColor,
          height: 100,
          width: 100,
          child: ClayContainer(
            color: const Color(0xFFF2F2F2),
            height: 80,
            width: 80,
            borderRadius: 50,
            depth: 50,
            spread: 20,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Visibility(
                visible: !counterController.updateBallCardShow.value,
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
  }
}
