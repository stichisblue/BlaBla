import 'package:blabla/core/style/colors.dart';
import 'package:blabla/core/widgets/bot_avatar.dart';
import 'package:flutter/material.dart';

class MessageBotBox extends StatelessWidget {
  final String message;
  final String time;
  final String botAssetPath;
  final Function() onVolumeTap;
  final Function() onAvatarTap;
  final Color botAvatarBgColor;
  const MessageBotBox({
    Key? key,
    required this.message,
    required this.time,
    required this.botAssetPath,
    required this.onVolumeTap,
    required this.onAvatarTap,
    required this.botAvatarBgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          BotAvatar(
            backGroundColor: botAvatarBgColor,
            botAssetPath: botAssetPath,
            onPressed: onAvatarTap,
            width: 40,
            height: 40,
          ),
          const SizedBox(
            width: 6,
          ),
          Expanded(
            flex: 10,
            child: _buildMessageBox(
              text: message,
              time: time,
              onVolumeTap: onVolumeTap,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _buildMessageBox({
    required final String text,
    required final String time,
    required Function() onVolumeTap,
  }) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                kMessageGrey,
                kMessageMilk,
              ],
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          padding: const EdgeInsets.only(
            top: 13,
            left: 13,
            right: 13,
            bottom: 22,
          ),
          child: SelectableText(
            text,
            style: const TextStyle(
              color: kBlack,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: onVolumeTap,
                style: TextButton.styleFrom(
                  primary: kDarkBlue,
                  shape: const CircleBorder(),
                  minimumSize: Size.zero,
                  padding: const EdgeInsets.all(2),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  elevation: 0,
                ),
                child: const Icon(
                  Icons.volume_up_rounded,
                  color: kDarkBlue,
                  size: 16,
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              Text(
                time,
                style: const TextStyle(
                  color: kDarkGrey,
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
