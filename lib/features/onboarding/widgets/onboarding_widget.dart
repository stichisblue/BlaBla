import 'package:blabla/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingWidget extends StatelessWidget {
  final String assetPath;
  final String subtitle;

  const OnboardingWidget({
    Key? key,
    required this.assetPath,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14, right: 14,),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset('assets/onboarding/splash_logo.svg'),
                Image.asset(assetPath),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            subtitle,
            style: const TextStyle(
              color: kBlack,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
