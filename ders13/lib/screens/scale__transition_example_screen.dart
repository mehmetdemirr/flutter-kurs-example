import 'package:flutter/material.dart';

class ScaleTransitonExampleScreen extends StatefulWidget {
  const ScaleTransitonExampleScreen({super.key});

  @override
  State<ScaleTransitonExampleScreen> createState() =>
      _ScaleTransitonExampleScreenState();
}

class _ScaleTransitonExampleScreenState
    extends State<ScaleTransitonExampleScreen> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );
    _animation = Tween(begin: 1.0, end: 0.5).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.linear,
      ),
    )..addListener(
        () {
          if (mounted) {
            setState(() {});
          }
        },
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("scale animation"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
              onLongPress: () {
                _animationController.forward();
              },
              onTap: () {
                _animationController.repeat(reverse: true);
              },
              onDoubleTap: () {
                _animationController.stop();
              },
              child: ScaleTransition(
                scale: _animation,
                child: Container(
                  color: Colors.blue,
                  width: 200,
                  height: 200,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
