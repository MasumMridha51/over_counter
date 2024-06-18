import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:over_counter/screen/counter_screen.dart';

class OverCounterApp extends StatelessWidget {
  const OverCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Over Counter',
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
      theme: ThemeData(
        fontFamily: 'Exo',
        scaffoldBackgroundColor: const Color(0xFFF2F2F2),
      ),
    );
  }
}
