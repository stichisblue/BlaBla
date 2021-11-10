import 'dart:io';

import 'package:blabla/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AvatarProfile extends StatefulWidget {

  final String? filePath;
  final String? name;
  final Function() onPenTap;
  final Function() onAddTap;
  final TextEditingController controller;
  final bool changeInfo;
  const AvatarProfile({
    Key? key,
    this.filePath,
    this.name,
    required this.onPenTap,
    required this.onAddTap,
    required this.controller,
    required this.changeInfo,
  }) : super(key: key);

  @override
  State<AvatarProfile> createState() => _AvatarProfileState();
}

class _AvatarProfileState extends State<AvatarProfile> {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            ClipOval(
              child: Stack(
                children: [
                  if (widget.filePath != null)
                    Image.file(
                      File(widget.filePath!),
                      height: 120,
                      width: 120,
                      fit: BoxFit.cover,
                    )
                  else
                    const CircleAvatar(
                      backgroundColor: kDarkBlue,
                      radius: 60,
                      child: Icon(
                        Icons.account_circle,
                        size: 120,
                        color: kBgBlue,
                      ),
                    ),
                  if (widget.changeInfo)
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        color: kBlack.withOpacity(0.7),
                      ),
                      child: InkWell(
                        onTap: widget.onAddTap,
                        child: const Icon(
                          Icons.add_a_photo,
                          color: kWhite,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            TextButton(
              onPressed: widget.onPenTap,
              style: TextButton.styleFrom(
                primary: kDarkBlue,
                elevation: 0,
                shape: const CircleBorder(),
              ),
              child: Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: widget.changeInfo ? kBotLightGreen : kWhite,
                ),
                child: widget.changeInfo
                    ? const Icon(
                        Icons.check,
                        color: kWhite,
                        size: 20,
                      )
                    : SvgPicture.asset(
                        'assets/pen.svg',
                        height: 20,
                        width: 20,
                      ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 6,
        ),
        if (widget.changeInfo)
          SizedBox(
            width: 120,
            child: TextField(
              controller: widget.controller,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: kBlack,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              cursorColor: kDarkBlue,
              decoration: const InputDecoration(
                focusColor: kDarkBlue,
                contentPadding: EdgeInsets.zero,
                border: UnderlineInputBorder(),
                hintText: 'Введите имя...',
                hintStyle: TextStyle(
                  color: kDarkGrey,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        else
          Text(
            widget.name ?? "Пользователь",
            style: const TextStyle(
              color: kBlack,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
      ],
    );
  }
}
