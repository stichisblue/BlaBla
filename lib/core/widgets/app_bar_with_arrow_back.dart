import 'package:blabla/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarWithArrowBack extends StatelessWidget {
  final Function() onPressed;
  const AppBarWithArrowBack({Key? key, required final this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: kTrans,
        elevation: 0,
        padding: const EdgeInsets.all(10),
        shape: const CircleBorder(),
      ),
      child: SvgPicture.asset(
        'assets/arrow_back.svg',
        height: 16,
        width: 16,
      ),
    );
  }
}
