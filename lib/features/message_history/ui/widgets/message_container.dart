import 'package:blabla/core/style/colors.dart';
import 'package:flutter/material.dart';

class MessageContainer extends StatelessWidget {
  final Widget child;
  const MessageContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 4),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
          child: child,
        ),
      ),
    );
  }
}
