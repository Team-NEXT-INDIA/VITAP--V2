import 'package:flutter/material.dart';

import '../../customs/theme.dart';

class BoardingSlideshow extends StatefulWidget {
  BoardingSlideshow({Key? key}) : super(key: key);

  @override
  State<BoardingSlideshow> createState() => _loginPageState();
}

class _loginPageState extends State<BoardingSlideshow>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(duration: const Duration(seconds: 40), vsync: this)
        ..repeat(reverse: true);

  late final Animation<double> _animation = Tween<double>(begin: 1, end: 1.5)
      .animate(CurvedAnimation(parent: _controller, curve: Curves.linear));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      width: MediaQuery.of(context).size.width,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(color: primaryColor),
      child: ScaleTransition(
        scale: _animation,
        child: Image.asset(
          'assets/images/on-boarding/pattern-2.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
