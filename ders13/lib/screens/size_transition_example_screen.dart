import 'package:flutter/material.dart';

class SizeTransitionExampleScreen extends StatefulWidget {
  const SizeTransitionExampleScreen({super.key});

  @override
  State<SizeTransitionExampleScreen> createState() =>
      _SizeTransitionExampleScreenState();
}

class _SizeTransitionExampleScreenState
    extends State<SizeTransitionExampleScreen> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );
    _animation = Tween(begin: 1.0, end: 0.5).animate(_animationController)
      ..addListener(() {
        if (mounted) {
          setState(() {});
        }
      });
    _animationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SizeTransition Example"),
      ),
      body: Column(
        children: [
          SizeTransition(
            axis: Axis.vertical,
            axisAlignment: 0,
            sizeFactor: _animation,
            child: Container(
              color: Colors.cyan,
              height: 250,
              width: 250,
            ),
          )
        ],
      ),
    );
  }
}
