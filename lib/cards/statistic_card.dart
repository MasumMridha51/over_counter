import 'package:clay_containers/widgets/clay_container.dart';
import 'package:clay_containers/widgets/clay_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:over_counter/widgets/clay_text_field.dart';

class StatisticCard extends StatelessWidget {
  const StatisticCard({super.key});

  @override
  Widget build(BuildContext context) {
    Color baseColor = const Color(0xFFF2F2F2);
    return ClayContainer(
      color: baseColor,
      height: 200,
      width: double.infinity,
      child: const Column(
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
                  ClayTextField(
                    intValue: '08',
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: ClayText("Total Run",
                        emboss: true, depth: 95, spread: 1, size: 20),
                  ),
                  ClayTextField(
                    intValue: '62',
                  ),
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
                  ClayTextField(
                    intValue: '02',
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: ClayText("Extra Run",
                        emboss: true, depth: 95, spread: 1, size: 20),
                  ),
                  ClayTextField(
                    intValue: '12',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
