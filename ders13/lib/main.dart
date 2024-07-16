import 'package:ders13/screens/animation_example_screen.dart';
import 'package:ders13/screens/cross_fade_screen.dart';
import 'package:ders13/screens/rotation_transition_example_screen.dart';
import 'package:ders13/screens/scale__transition_example_screen.dart';
import 'package:ders13/screens/size_transition_example_screen.dart';
import 'package:ders13/screens/slide_transition_example_screen.dart';
import 'package:ders13/utils/utlity_color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: UtiltyColor.appBarBackgroundColor,
          centerTitle: true,
        ),
      ),
      home: const SizeTransitionExampleScreen(),
    );
  }
}
