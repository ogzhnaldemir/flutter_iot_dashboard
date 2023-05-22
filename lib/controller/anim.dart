

import 'package:flutter/material.dart';

class LogoAnimation extends StatefulWidget {
  @override
  _LogoAnimationState createState() => _LogoAnimationState();
}

class _LogoAnimationState extends State<LogoAnimation>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 1500));
    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeIn,
      ),
    );

    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedBuilder(
          animation: _animation,
          builder: (BuildContext context, Widget? child) {
            return Opacity(
              opacity: _animation.value,
              child: Transform.translate(
                offset: Offset(0, _animation.status == AnimationStatus.reverse ? 0 : 50),
                child: const Text(
                  'H',
                  style: TextStyle(fontSize: 3.0),
                ),
              ),
            );
          },
        ),
        AnimatedBuilder(
          animation: _animation,
          builder: (BuildContext context, Widget? child) {
            return Opacity(
              opacity: _animation.value,
              child: Transform.translate(
                offset: Offset(0, _animation.status == AnimationStatus.reverse ? 0 : 50),
                child: const Text(
                  'O',
                  style: TextStyle(fontSize: 5.0),
                ),
              ),
            );
          },
        ),
       AnimatedBuilder(
          animation: _animation,
          builder: (BuildContext context, Widget? child) {
            return Opacity(
              opacity: _animation.value,
              child: Transform.translate(
                offset: Offset(0, _animation.status == AnimationStatus.reverse ? 0 : 50),
                child: const Text(
                  'S',
                  style: TextStyle(fontSize: 3.0),
                ),
              ),
            );
          },
        ),
       AnimatedBuilder(
          animation: _animation,
          builder: (BuildContext context, Widget? child) {
            return Opacity(
              opacity: _animation.value,
              child: Transform.translate(
                offset: Offset(0, _animation.status == AnimationStatus.reverse ? 0 : 30),
                child: const Text(
                  'G',
                  style: TextStyle(fontSize: 5.0),
                ),
              ),
            );
          },
        ),
        AnimatedBuilder(
          animation: _animation,
          builder: (BuildContext context, Widget? child) {
            return Opacity(
              opacity: _animation.value,
              child: Transform.translate(
                offset: Offset(0, _animation.status == AnimationStatus.reverse ? 0 : 30),
                child: const Text(
                  'E',
                  style: TextStyle(fontSize: 5.0),
                ),
              ),
            );
          },
        ),
          AnimatedBuilder(
          animation: _animation,
          builder: (BuildContext context, Widget? child) {
            return Opacity(
              opacity: _animation.value,
              child: Transform.translate(
                offset: Offset(0, _animation.status == AnimationStatus.reverse ? 0 : 30),
                child: const Text(
                  'L',
                  style: TextStyle(fontSize: 5.0),
                ),
              ),
            );
          },
        ),
         AnimatedBuilder(
          animation: _animation,
          builder: (BuildContext context, Widget? child) {
            return Opacity(
              opacity: _animation.value,
              child: Transform.translate(
                offset: Offset(0, _animation.status == AnimationStatus.reverse ? 0 : 30),
                child: const Text(
                  'D',
                  style: TextStyle(fontSize: 5.0),
                ),
              ),
            );
          },
        ),
         AnimatedBuilder(
          animation: _animation,
          builder: (BuildContext context, Widget? child) {
            return Opacity(
              opacity: _animation.value,
              child: Transform.translate(
                offset: Offset(0, _animation.status == AnimationStatus.reverse ? 0 : 30),
                child: const Text(
                  'İ',
                  style: TextStyle(fontSize:  5.0),
                ),
              ),
            );
          },
        ), AnimatedBuilder(
          animation: _animation,
          builder: (BuildContext context, Widget? child) {
            return Opacity(
              opacity: _animation.value,
              child: Transform.translate(
                offset: Offset(0, _animation.status == AnimationStatus.reverse ? 0 : 30),
                child: const Text(
                  'N',
                  style: TextStyle(fontSize:  5.0),
                ),
              ),
            );
          },
        ), AnimatedBuilder(
          animation: _animation,
          builder: (BuildContext context, Widget? child) {
            return Opacity(
              opacity: _animation.value,
              child: Transform.translate(
                offset: Offset(0, _animation.status == AnimationStatus.reverse ? 0 : 30),
                child: const Text(
                  'İ',
                  style: TextStyle(fontSize:  5.0),
                ),
              ),
            );
          },
        ), AnimatedBuilder(
          animation: _animation,
          builder: (BuildContext context, Widget? child) {
            return Opacity(
              opacity: _animation.value,
              child: Transform.translate(
                offset: Offset(0, _animation.status == AnimationStatus.reverse ? 0 : 30),
                child: const Text(
                  'Z',
                  style: TextStyle(fontSize:  5.0),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}// TODO Implement this library.