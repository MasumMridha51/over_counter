import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:over_counter/cards/action_card.dart';
import 'package:over_counter/cards/over_card.dart';
import 'package:over_counter/cards/statistic_card.dart';
import 'package:over_counter/cards/update_ball_card.dart';
import 'package:over_counter/controller/counter_controller.dart';
import 'package:over_counter/widgets/clay_round_button.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({super.key});

  CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    Color baseColor = const Color(0xFFF2F2F2);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Over Counter'),
        backgroundColor: const Color(0xFFF2F2F2),
        surfaceTintColor: Colors.transparent,
        actions: const <Widget>[
          ClayRoundButton(
            buttonInputField: Icon(Icons.restart_alt_rounded),
            rightSpace: EdgeInsets.only(right: 15),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: baseColor,
              child: const OverCard(),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: baseColor,
              child: const StatisticCard(),
            ),
            Obx(() {
              return Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  color: baseColor,
                  child: Visibility(
                    visible: counterController.updateBallCardShow.value,
                    child: const UpdateBallCard(),
                  ));
            }),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: baseColor,
              child: ActionCard(),
            ),
            const Text('All right reserved by Masum Mridha.'),
          ],
        ),
      ),
    );
  }
}
