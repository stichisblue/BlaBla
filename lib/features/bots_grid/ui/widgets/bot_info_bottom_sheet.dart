import 'package:blabla/core/style/colors.dart';
import 'package:flutter/material.dart';

class BotInfoBottomSheet extends StatelessWidget {
  final String botName;
  final String botInfo;
  final String botAssetPath;

  const BotInfoBottomSheet({
    Key? key,
    required this.botName,
    required this.botInfo,
    required this.botAssetPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          child: Container(
            width: 80,
            height: 5,
            decoration: BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.circular(3),
            ),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: kWhite,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          padding: const EdgeInsets.only(
            top: 39,
            left: 29,
            right: 29,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                botName,
                style: const TextStyle(
                  color: kBlack,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Align(
                child: Hero(
                  tag: 'bots grid $botName',
                  child: Image.asset(
                    botAssetPath,
                    height: 220,
                    width: 220,
                  ),
                ),
              ),
              const SizedBox(
                height: 37,
              ),
              Text(
                botInfo,
                style: const TextStyle(
                  color: kBlack,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
