import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/material.dart';

class ClayRoundButton extends StatelessWidget {
  final Widget? buttonInputField;
  final EdgeInsetsGeometry rightSpace;
  const ClayRoundButton(
      {super.key, required this.buttonInputField, required this.rightSpace});

  @override
  Widget build(BuildContext context) {
    Color baseColor = const Color(0xFFF2F2F2);
    return Container(
      color: baseColor,
      child: Padding(
        padding: rightSpace,
        child: ClayContainer(
          color: baseColor,
          height: 38,
          width: 38,
          borderRadius: 50,
          child: Padding(
            padding: const EdgeInsets.all(1),
            child: buttonInputField,
          ),
        ),
      ),
    );
  }
}
