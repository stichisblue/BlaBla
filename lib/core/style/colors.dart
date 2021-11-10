import 'package:flutter/material.dart';

const kTrans = Colors.transparent;
const kBlack = Color(0xFF000000);
const kWhite = Color(0xFFFFFFFF);
const kDarkBlue = Color(0xFF011538);
const kGrey = Color(0xFFE5E5E5);
const kDarkGrey = Color(0xFFb0b0b0);
const kBotLightGreen = Color(0xFF64E200);
const kBotMediumBlue = Color(0xFF4200FF);
const kBotNeon = Color(0xFF00FF94);
const kBotYellow = Color(0xFFccff00);
const kBotSkyBlue = Color(0xFF00E0FF);
const kBotLightBlue = Color(0xFF005dff);
const kBotRed = Color(0xFFff0505);
const kBotDarkBlue = Color(0xFF0029FF);
const kBotGrey = Color(0xFFC4C4C4);
const kBotOrange = Color(0xFFFF9900);
const kBgBlue = Color(0xFFbfd4e6);
const kMessageGrey = Color(0xFFECECEC);
const kMessageMilk = Color(0xFFededed);
final kMessageBlue = const Color(0xFFbfd4e6).withOpacity(0.9);
const kMessageLightBlue = Color(0xFFBFD4E6);
const kArrowBlue = Color(0xFF09008a);
const kFaqBlue = Color(0xFF00A3FF);

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
