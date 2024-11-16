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
        actions: <Widget>[
          ClayRoundButton(
            buttonInputField: IconButton(
              onPressed: () {
                // Show popup dialog
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text(
                        'Start Again ?',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                      content: const Text(
                          'Would you like to remove everythings and start again ?'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            counterController.restart();
                            Navigator.of(context).pop(); // Close the dialog
                            print('Press');
                          },
                          child: const Text(
                            'Restart',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              icon: const Icon(Icons.repeat),
            ),
            rightSpace: const EdgeInsets.only(right: 15),
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  color: baseColor,
                  child: OverCard(),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  color: baseColor,
                  child: StatisticCard(),
                ),
                Obx(() {
                  return Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      color: baseColor,
                      child: Visibility(
                        visible: counterController.updateBallCardShow.value,
                        child: UpdateBallCard(),
                      ));
                }),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  color: baseColor,
                  child: ActionCard(),
                ),
                const Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'All right reserved by Masum Mridha.',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
