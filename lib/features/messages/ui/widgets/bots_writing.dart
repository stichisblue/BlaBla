import 'package:blabla/core/bots/bots_list.dart';
import 'package:blabla/core/style/colors.dart';
import 'package:blabla/features/messages/data/models/user.dart';
import 'package:blabla/features/messages/domain/entities/user.dart';
import 'package:flutter/material.dart';

class BotsWriting extends StatelessWidget {
  final UserTypes bot;
  const BotsWriting({
    Key? key,
    required this.bot,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final b = getBot(bot);
    return Padding(
      padding: const EdgeInsets.only(left: 13),
      child: Text(
        '${b.name} пишет...',
        style: const TextStyle(
          fontStyle: FontStyle.italic,
          fontSize: 13,
          color: kWhite,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }

  Bot getBot(UserTypes botType) {
    switch (botType) {
      case UserTypes.misterMix:
        return misterMixBot;
      case UserTypes.renTv:
        return renTvBot;
      case UserTypes.journalist:
        return journalistBot;
      case UserTypes.granny:
        return grannyBot;
      case UserTypes.gopnik:
        return gopnikBot;
      case UserTypes.marketolog:
        return marketologBot;
      case UserTypes.shortStoryMan:
        return shortStoryManBot;
      case UserTypes.instaChika:
        return instaChikaBot;
      case UserTypes.korocheWiki:
        return korocheWikiBot;
      case UserTypes.cinema:
        return cinemaBot;
      case UserTypes.horoscope:
        return horoscopeBot;
      case UserTypes.svyatoslav:
        return svyatoslavBot;
      default:
        return misterMixBot;
    }
  }
}
