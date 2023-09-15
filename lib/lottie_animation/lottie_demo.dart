import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimationDemo extends StatefulWidget {
  const LottieAnimationDemo({super.key});

  @override
  State<LottieAnimationDemo> createState() => _LottieAnimationDemoState();
}

class _LottieAnimationDemoState extends State<LottieAnimationDemo>
    with TickerProviderStateMixin {
  late final AnimationController? _animationController;
  @override
  void initState() {
    _animationController = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          'assets/animation/smile_animation.json',
          controller: _animationController,
          onLoaded: (time) {
            _animationController!
              ..duration = time.duration
              ..forward();
          },
        ),
      ),
    );
  }
}
