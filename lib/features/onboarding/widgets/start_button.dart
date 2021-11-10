import 'package:blabla/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BouncingButton extends StatefulWidget {
  final String title;
  final Function() onPressed;
  const BouncingButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);
  @override
  _BouncingButtonState createState() => _BouncingButtonState();
}

class _BouncingButtonState extends State<BouncingButton>
    with SingleTickerProviderStateMixin {
  late double _scale;
  late AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 500,
      ),
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value;
    return GestureDetector(
      onTapDown: _tapDown,
      onTapUp: _tapUp,
      onTap: widget.onPressed,
      child: Transform.scale(
        scale: _scale,
        child: _animatedButton(),
      ),
    );
  }

  Widget _animatedButton() {
    return Container(
      width: 220,
      padding: const EdgeInsets.only(
        top: 12,
        bottom: 13,
        right: 20,
        left: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: kDarkBlue,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.title,
            style: const TextStyle(
              color: kWhite,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            width: 23,
          ),
          SvgPicture.asset('assets/arrow.svg'),
        ],
      ),
    );
  }

  void _tapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _tapUp(TapUpDetails details) {
    _controller.reverse();
  }
}
