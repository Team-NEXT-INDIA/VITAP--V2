import 'package:flutter/material.dart';

import '../../customs/theme.dart';

class LoginSlideshow extends StatefulWidget {
  LoginSlideshow({Key? key}) : super(key: key);

  @override
  State<LoginSlideshow> createState() => _loginPageState();
}

class _loginPageState extends State<LoginSlideshow>
    with TickerProviderStateMixin {
  late final String imageBG;
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
      decoration: BoxDecoration(gradient: CarouselGradient),
      child: ScaleTransition(
        scale: _animation,
        child: Image.asset(
          'assets/images/on-boarding/vitap-drone.jpeg',
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
