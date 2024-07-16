import 'package:flutter/material.dart';

class SlideTransitionExampleScreen extends StatefulWidget {
  const SlideTransitionExampleScreen({super.key});

  @override
  State<SlideTransitionExampleScreen> createState() =>
      _SlideTransitionExampleScreenState();
}

class _SlideTransitionExampleScreenState
    extends State<SlideTransitionExampleScreen> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );
    _animation = Tween(
      begin: const Offset(-2, 0),
      end: const Offset(3, 0),
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.linear,
      ),
    )..addListener(() {
        if (mounted) {
          setState(() {});
        }
      });
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
        title: const Text(
          "SlideTransition example",
        ),
      ),
      body: Column(
        children: [
          SlideTransition(
            position: _animation,
            child: Text(
              "Bu bir kayan yazı !",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.red,
                  ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          ElevatedButton(
            onPressed: () {
              _animationController.repeat();
            },
            child: const Text("Animasyonu Başlat"),
          )
        ],
      ),
    );
  }
}
