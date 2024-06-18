import 'package:clay_containers/widgets/clay_container.dart';
import 'package:clay_containers/widgets/clay_text.dart';
import 'package:flutter/material.dart';

import '../widgets/clay_round_button.dart';

class OverCard extends StatelessWidget {
  const OverCard({super.key});

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
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 12,
                  ),
                  child: const ClayRoundButton(
                    buttonInputField: Center(child: Text('6')),
                    rightSpace: EdgeInsets.only(right: 2),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 12,
                  ),
                  child: const ClayRoundButton(
                    buttonInputField: Center(child: Text('6')),
                    rightSpace: EdgeInsets.only(right: 2),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 12,
                  ),
                  child: const ClayRoundButton(
                    buttonInputField: Center(child: Text('6')),
                    rightSpace: EdgeInsets.only(right: 2),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 12,
                  ),
                  child: const ClayRoundButton(
                    buttonInputField: Center(child: Text('6')),
                    rightSpace: EdgeInsets.only(right: 2),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 12,
                  ),
                  child: const ClayRoundButton(
                    buttonInputField: Center(child: Text('6')),
                    rightSpace: EdgeInsets.only(right: 2),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 12,
                  ),
                  child: const ClayRoundButton(
                    buttonInputField: Center(child: Text('6')),
                    rightSpace: EdgeInsets.only(right: 2),
                  ),
                ),
                const Text('|'),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 12,
                  ),
                  child: const ClayRoundButton(
                    buttonInputField: Center(child: Text('6')),
                    rightSpace: EdgeInsets.only(right: 2),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 12,
                  ),
                  child: const ClayRoundButton(
                    buttonInputField: Center(child: Text('6')),
                    rightSpace: EdgeInsets.only(right: 2),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
