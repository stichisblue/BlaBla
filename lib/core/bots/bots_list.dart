import 'package:blabla/core/style/colors.dart';
import 'package:blabla/features/messages/data/models/user.dart';
import 'package:blabla/features/messages/domain/entities/user.dart';

final misterMixBot = Bot(
  assetPath: 'assets/bots/mister_mix.png',
  name: 'Мистер Микс',
  color: kBotYellow,
  userTypes: UserTypes.misterMix,
  botInfo: 'Напишите что-нибудь и получите неординарный ответ от Mr. Микса',
);

final cinemaBot = Bot(
  assetPath: 'assets/bots/cinema.png',
  name: 'Недосценарист',
  color: kWhite,
  userTypes: UserTypes.cinema,
  botInfo:
      'Напишите название фильма (существующего или нет), а Недосценарист расскажет вам о чем он',
);

final gopnikBot = Bot(
  assetPath: 'assets/bots/gopnik.png',
  name: 'Гопник',
  color: kBotGrey,
  userTypes: UserTypes.gopnik,
  botInfo: 'Начните писать цитату для вашего паблика, а Гопник его продолжит',
);

final grannyBot = Bot(
  assetPath: 'assets/bots/granny.png',
  name: 'Бухой дед',
  color: kBotMediumBlue,
  userTypes: UserTypes.granny,
  botInfo: 'Начните писать тост, а Бухой дед его продолжит',
);

final horoscopeBot = Bot(
  assetPath: 'assets/bots/horoscope.png',
  name: 'Гороскопша',
  color: kBotDarkBlue,
  userTypes: UserTypes.horoscope,
  botInfo:
      'Введите знак зодиака и получите персональный прогноз от эксперта Гороскопши',
);

final instaChikaBot = Bot(
  assetPath: 'assets/bots/insta_chika.png',
  name: 'Инстачика',
  color: kBotLightGreen,
  userTypes: UserTypes.instaChika,
  botInfo:
      'Напишите что-нибудь, а Инстачика придумает вам подпись для вашего Instagram',
);

final journalistBot = Bot(
  assetPath: 'assets/bots/journalist.png',
  name: 'Журналист',
  color: kBotSkyBlue,
  userTypes: UserTypes.journalist,
  botInfo: 'Напишите что-нбудь, а Журналист придумает про это ТВ репортаж',
);

final korocheWikiBot = Bot(
  assetPath: 'assets/bots/koroche_wiki.png',
  name: 'Короче Википедия',
  color: kBotLightBlue,
  userTypes: UserTypes.korocheWiki,
  botInfo:
      'Напишите какое-нибудь слово, а Короче Википедия даст ему определение',
);

final marketologBot = Bot(
  assetPath: 'assets/bots/marketolog.png',
  name: 'Маркетологша',
  color: kBotNeon,
  userTypes: UserTypes.marketolog,
  botInfo:
      'Введите название вашей компании, имя бабушки или любое другое слово - и получите простой звучный слоган от Маркетологши',
);

final renTvBot = Bot(
  assetPath: 'assets/bots/ren_tv.png',
  name: 'РЕН ТВ-шник',
  color: kBlack,
  userTypes: UserTypes.renTv,
  botInfo:
      'Напишите какое-нибудь слово, а РЕН ТВ-шник придумает вам теорию заговора',
);

final shortStoryManBot = Bot(
  assetPath: 'assets/bots/short_story_man.png',
  name: 'Шорт Стори Мэн',
  color: kBotRed,
  userTypes: UserTypes.shortStoryMan,
  botInfo:
      'Начните писать историю, а Шорт Стори Мэн продолжит - иногда страшно, но чаще смешно',
);

final svyatoslavBot = Bot(
  assetPath: 'assets/bots/svyatoslav.png',
  name: 'Святослав Благомыслящий',
  color: kBotOrange,
  userTypes: UserTypes.svyatoslav,
  botInfo: 'Напишите что-нибудь и получите народную мудрость от Святослава',
);

final botList = [
  misterMixBot,
  renTvBot,
  journalistBot,
  grannyBot,
  gopnikBot,
  marketologBot,
  shortStoryManBot,
  instaChikaBot,
  korocheWikiBot,
  cinemaBot,
  horoscopeBot,
  svyatoslavBot,
];

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
