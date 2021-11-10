import 'package:blabla/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MessageInputField extends StatelessWidget {
  final Function() onSend;
  final Function(String e) onChanged;
  final bool isEnabled;
  final TextEditingController editingController;
  const MessageInputField({
    Key? key,
    required this.onSend,
    required this.onChanged,
    required this.isEnabled,
    required this.editingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      padding: const EdgeInsets.only(
        top: 15,
        left: 12,
        right: 12,
        bottom: 15,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: kGrey,
              ),
              padding: const EdgeInsets.only(left: 10),
              child: TextField(
                controller: editingController,
                onChanged: onChanged,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                  hintText: 'Отправить сообщение...',
                  hintStyle: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          TextButton(
            onPressed: onSend,
            style: TextButton.styleFrom(
              primary: kDarkBlue,
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: SvgPicture.asset(
              'assets/send.svg',
              color: isEnabled ? kArrowBlue : kDarkGrey,
            ),
          )
        ],
      ),
    );
  }
}
