import 'package:flutter/material.dart';

class BotAvatar extends StatefulWidget {
  final Color backGroundColor;
  final String botAssetPath;
  final Function() onPressed;
  final double? height;
  final double? width;
  const BotAvatar({
    Key? key,
    required this.backGroundColor,
    required this.botAssetPath,
    required this.onPressed,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  State<BotAvatar> createState() => _BotAvatarState();
}

class _BotAvatarState extends State<BotAvatar>
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
    return Container(
      height: widget.height ?? 55,
      width: widget.width ?? 55,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: widget.backGroundColor,
      ),
      child: Image.asset(
        widget.botAssetPath,
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
