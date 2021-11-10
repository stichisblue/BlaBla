import 'package:blabla/core/style/colors.dart';
import 'package:blabla/core/widgets/bot_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MessageUpperBar extends StatelessWidget {
  final Function() onArrowBack;
  final String botName;
  final String botAssetPath;
  final Color botBgColor;
  final Function() onPressed;
  const MessageUpperBar({
    Key? key,
    required this.onArrowBack,
    required this.botName,
    required this.botAssetPath,
    required this.botBgColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        right: 10,
        top: 10,
        bottom: 7,
      ),
      decoration: const BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: onArrowBack,
            style: TextButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(6),
              primary: kBlack,
            ),
            child: SvgPicture.asset(
              'assets/arrow_back.svg',
              color: kDarkBlue,
              height: 16,
              width: 16,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  botName,
                  style: const TextStyle(
                    color: kBlack,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  'online',
                  style: TextStyle(
                    color: kDarkGrey,
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          BotAvatar(
            backGroundColor: botBgColor,
            botAssetPath: botAssetPath,
            onPressed: onPressed,
            height: 45,
            width: 45,
          )
        ],
      ),
    );
  }
}
