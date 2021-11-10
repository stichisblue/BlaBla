import 'package:blabla/core/style/colors.dart';
import 'package:flutter/material.dart';

class MessageMeBox extends StatelessWidget {
  final String message;
  final String time;
  const MessageMeBox({
    Key? key,
    required this.message,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Spacer(),
          Expanded(
            flex: 8,
            child: _buildMessageBox(
              text: message,
              time: time,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMessageBox({
    required final String text,
    required final String time,
  }) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                kMessageBlue,
                kMessageLightBlue,
              ],
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            ),
          ),
          padding: const EdgeInsets.only(
            top: 13,
            left: 13,
            right: 13,
            bottom: 20,
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
          padding: const EdgeInsets.only(bottom: 5,right: 5),
          child: Text(
            time,
            style: const TextStyle(
              color: kWhite,
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
