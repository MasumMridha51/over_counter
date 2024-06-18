import 'package:clay_containers/widgets/clay_container.dart';
import 'package:clay_containers/widgets/clay_text.dart';
import 'package:flutter/material.dart';

class ClayTextField extends StatelessWidget {
  final String intValue;
  const ClayTextField({super.key, required this.intValue});

  @override
  Widget build(BuildContext context) {
    Color baseColor = const Color(0xFFF2F2F2);

    return Container(
      color: baseColor,
      child: Center(
        child: ClayContainer(
          emboss: true,
          color: baseColor,
          height: 30,
          width: 80,
          borderRadius: 10,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ClayText(intValue, emboss: true, size: 25),
          ),
        ),
      ),
    );
  }
}
