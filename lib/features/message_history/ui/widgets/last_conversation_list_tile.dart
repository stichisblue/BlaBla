import 'package:blabla/core/style/colors.dart';
import 'package:flutter/material.dart';

class LastConversationListTile extends StatelessWidget {
  final String botAssetPath;
  final String botName;
  final String time;
  final String lastMessage;
  final Color color;
  final Function() onTap;
  const LastConversationListTile({
    Key? key,
    required this.botAssetPath,
    required this.botName,
    required this.time,
    required this.lastMessage,
    required this.color,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        elevation: 0,
        primary: kDarkBlue,
        padding: const EdgeInsets.only(
          left: 26,
          right: 26,
          top: 10,
          bottom: 10,
        ),
      ),
      onPressed: onTap,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Text(
            time,
            style: const TextStyle(
              color: kDarkGrey,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color,
                ),
                child: Image.asset(botAssetPath),
              ),
              const SizedBox(
                width: 9,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      botName,
                      style: const TextStyle(
                        color: kBlack,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      lastMessage,
                      style: const TextStyle(
                        color: kDarkGrey,
                        overflow: TextOverflow.ellipsis,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
