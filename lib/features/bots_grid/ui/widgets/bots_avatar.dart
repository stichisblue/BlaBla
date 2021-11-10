import 'package:blabla/core/style/colors.dart';
import 'package:flutter/material.dart';

class BotsAvatar extends StatefulWidget {
  final Color backGroundColor;
  final String botAssetPath;
  final String botname;
  final Function() onPressed;
  const BotsAvatar({
    Key? key,
    required this.backGroundColor,
    required this.botAssetPath,
    required this.botname,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<BotsAvatar> createState() => _BotsAvatarState();
}

class _BotsAvatarState extends State<BotsAvatar>
    with SingleTickerProviderStateMixin {
  late double _scale;

  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 100,
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
    return SizedBox(
      width: 65,
      child: Column(
        children: [
          Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: widget.backGroundColor,
            ),
            child: Hero(
              tag: 'bots grid ${widget.botname}',
              child: Image.asset(
                widget.botAssetPath,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            widget.botname,
            style: const TextStyle(
              color: kWhite,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
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
