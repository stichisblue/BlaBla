import 'package:blabla/core/style/colors.dart';
import 'package:blabla/core/style/wave_clipper.dart';
import 'package:blabla/features/bots_grid/application/botsgrid_bloc.dart';
import 'package:blabla/features/bots_grid/ui/widgets/avatar_profile.dart';
import 'package:blabla/features/bots_grid/ui/widgets/bot_info_bottom_sheet.dart';
import 'package:blabla/features/bots_grid/ui/widgets/bots_avatar.dart';
import 'package:blabla/features/bots_grid/ui/widgets/menu_screen.dart';
import 'package:blabla/features/message_history/ui/message_history_screen.dart';
import 'package:blabla/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:image_picker/image_picker.dart';

class BotsGridScreen extends StatefulWidget {
  const BotsGridScreen({Key? key}) : super(key: key);

  @override
  _BotsGridScreenState createState() => _BotsGridScreenState();
}

class _BotsGridScreenState extends State<BotsGridScreen>
    with TickerProviderStateMixin {
  final controller = TextEditingController();
  String? filePath;
  final ImagePicker imagePicker = ImagePicker();
  final _drawerController = ZoomDrawerController();
  late AnimationController _animationController;
  bool isMenu = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 500,
      ),
    );
  }

  void _handleOnPressed() {
    setState(() {
      isMenu = !isMenu;
      isMenu ? _animationController.forward() : _animationController.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<BotsgridBloc>()
        ..add(
          const BotsgridEventInitial(),
        ),
      child: BlocBuilder<BotsgridBloc, BotsgridState>(
        builder: (context, state) {
          return SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              body: ZoomDrawer(
                mainScreenScale: 0.05,
                disableGesture: true,
                style: DrawerStyle.Style1,
                controller: _drawerController,
                borderRadius: 50.0,
                showShadow: true,
                angle: 0.0,
                backgroundColor: kDarkGrey,
                slideWidth: 220,
                menuScreen: const MenuScreen(),
                mainScreen: GestureDetector(
                  onTap: () {
                    final bool e = _drawerController.isOpen!() as bool;
                    if (e) {
                      _drawerController.close!();
                      _handleOnPressed();
                    }
                  },
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/background.png',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 5,
                            child: Stack(
                              children: [
                                ClipPath(
                                  clipper: WaveClipperTwo(),
                                  child: Container(
                                    height: 380,
                                    color: kBgBlue,
                                    alignment: Alignment.center,
                                    child: AvatarProfile(
                                      changeInfo: state.changeInfo,
                                      controller: controller,
                                      name: state.hasName ? state.name : null,
                                      filePath: state.hasPhoto
                                          ? state.filePath
                                          : null,
                                      onPenTap: () {
                                        if (state.changeInfo) {
                                          context.read<BotsgridBloc>().add(
                                                BotsgridEvent.onChangesSaved(
                                                  name: controller.text,
                                                  filePath: filePath,
                                                ),
                                              );
                                        } else {
                                          context.read<BotsgridBloc>().add(
                                                const BotsgridEvent.onPenTap(),
                                              );
                                        }
                                      },
                                      onAddTap: () async {
                                        final res = await imagePicker.pickImage(
                                          source: ImageSource.gallery,
                                        );
                                        if (res != null) {
                                          filePath = res.path;
                                          // ignore: use_build_context_synchronously
                                          context.read<BotsgridBloc>().add(
                                                BotsgridEvent.onPhotoChanged(
                                                  filePath: res.path,
                                                ),
                                              );
                                        }
                                      },
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: SafeArea(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        TextButton(
                                          style: TextButton.styleFrom(
                                            shape: const CircleBorder(),
                                            primary: kDarkBlue,
                                          ),
                                          onPressed: () {
                                            _handleOnPressed();
                                            if (isMenu) {
                                              _drawerController.open!();
                                            } else {
                                              _drawerController.close!();
                                            }
                                          },
                                          child: AnimatedIcon(
                                            icon: AnimatedIcons.menu_close,
                                            progress: _animationController,
                                            size: 30,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 50,
                                            top: 220,
                                          ),
                                          child: SvgPicture.asset(
                                            'assets/blabla_logo.svg',
                                            height: 60,
                                            width: 60,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: SafeArea(
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const MessageHistoryScreen(),
                                          ),
                                        );
                                      },
                                      style: TextButton.styleFrom(
                                        primary: kDarkBlue,
                                        shape: const CircleBorder(),
                                      ),
                                      child: SvgPicture.asset(
                                        'assets/send.svg',
                                        color: kDarkBlue,
                                        height: 25,
                                        width: 25,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: SafeArea(
                              child: PageView(
                                physics: const BouncingScrollPhysics(),
                                children: [
                                  SafeArea(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 50),
                                      child: Wrap(
                                        alignment: WrapAlignment.center,
                                        spacing: 48,
                                        runSpacing: 24,
                                        children: [
                                          BotsAvatar(
                                            backGroundColor: kBotLightGreen,
                                            botAssetPath:
                                                'assets/bots/mister_mix.png',
                                            botname: 'Мистер Микс',
                                            onPressed: () async {
                                              await showModalBottomSheet(
                                                backgroundColor: kTrans,
                                                isScrollControlled: true,
                                                context: context,
                                                builder: (context) => Wrap(
                                                  children: const [
                                                    BotInfoBottomSheet(
                                                      botName: 'Мистер Микс',
                                                      botInfo:
                                                          'Напишите что-нибудь и получите неординарный ответ от Mr. Микса',
                                                      botAssetPath:
                                                          'assets/bots/mister_mix.png',
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                          BotsAvatar(
                                            backGroundColor: kBlack,
                                            botAssetPath:
                                                'assets/bots/ren_tv.png',
                                            botname: 'РЕН ТВ-шник',
                                            onPressed: () async {
                                              await showModalBottomSheet(
                                                backgroundColor: kTrans,
                                                isScrollControlled: true,
                                                context: context,
                                                builder: (context) => Wrap(
                                                  children: const [
                                                    BotInfoBottomSheet(
                                                      botName: 'РЕН ТВ-шник',
                                                      botInfo:
                                                          'Напишите какое-нибудь слово, а РЕН ТВ-шник придумает вам теорию заговора',
                                                      botAssetPath:
                                                          'assets/bots/ren_tv.png',
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                          BotsAvatar(
                                            backGroundColor: kBotMediumBlue,
                                            botAssetPath:
                                                'assets/bots/journalist.png',
                                            botname: 'Журналист',
                                            onPressed: () async {
                                              await showModalBottomSheet(
                                                backgroundColor: kTrans,
                                                isScrollControlled: true,
                                                context: context,
                                                builder: (context) => Wrap(
                                                  children: const [
                                                    BotInfoBottomSheet(
                                                      botName: 'Журналист',
                                                      botInfo:
                                                          'Напишите что-нбудь, а Журналист придумает про это ТВ репортаж',
                                                      botAssetPath:
                                                          'assets/bots/journalist.png',
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                          BotsAvatar(
                                            backGroundColor: kBotLightBlue,
                                            botAssetPath:
                                                'assets/bots/granny.png',
                                            botname: 'Бухой дед',
                                            onPressed: () async {
                                              await showModalBottomSheet(
                                                backgroundColor: kTrans,
                                                isScrollControlled: true,
                                                context: context,
                                                builder: (context) => Wrap(
                                                  children: const [
                                                    BotInfoBottomSheet(
                                                      botName: 'Бухой дед',
                                                      botInfo:
                                                          'Начните писать тост, а Бухой дед его продолжит',
                                                      botAssetPath:
                                                          'assets/bots/granny.png',
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                          BotsAvatar(
                                            backGroundColor: kBotGrey,
                                            botAssetPath:
                                                'assets/bots/gopnik.png',
                                            botname: 'Гопник',
                                            onPressed: () async {
                                              await showModalBottomSheet(
                                                backgroundColor: kTrans,
                                                isScrollControlled: true,
                                                context: context,
                                                builder: (context) => Wrap(
                                                  children: const [
                                                    BotInfoBottomSheet(
                                                      botName: 'Гопник',
                                                      botInfo:
                                                          'Начните писать цитату для вашего паблика, а Гопник его продолжит',
                                                      botAssetPath:
                                                          'assets/bots/gopnik.png',
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                          BotsAvatar(
                                            backGroundColor: kBotNeon,
                                            botAssetPath:
                                                'assets/bots/marketolog.png',
                                            botname: 'Маркетологша',
                                            onPressed: () async {
                                              await showModalBottomSheet(
                                                backgroundColor: kTrans,
                                                isScrollControlled: true,
                                                context: context,
                                                builder: (context) => Wrap(
                                                  children: const [
                                                    BotInfoBottomSheet(
                                                      botName: 'Маркетологша',
                                                      botInfo:
                                                          'Введите название вашей компании, имя бабушки или любое другое слово - и получите простой звучный слоган от Маркетологши',
                                                      botAssetPath:
                                                          'assets/bots/marketolog.png',
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                          BotsAvatar(
                                            backGroundColor: kBotRed,
                                            botAssetPath:
                                                'assets/bots/short_story_man.png',
                                            botname: 'Шорт Стори Мэн',
                                            onPressed: () async {
                                              await showModalBottomSheet(
                                                backgroundColor: kTrans,
                                                isScrollControlled: true,
                                                context: context,
                                                builder: (context) => Wrap(
                                                  children: const [
                                                    BotInfoBottomSheet(
                                                      botName: 'Шорт Стори Мэн',
                                                      botInfo:
                                                          'Начните писать историю, а Шорт Стори Мэн продолжит - иногда страшно, но чаще смешно',
                                                      botAssetPath:
                                                          'assets/bots/short_story_man.png',
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                          BotsAvatar(
                                            backGroundColor: kBotLightGreen,
                                            botAssetPath:
                                                'assets/bots/insta_chika.png',
                                            botname: 'Инстачика',
                                            onPressed: () async {
                                              await showModalBottomSheet(
                                                backgroundColor: kTrans,
                                                isScrollControlled: true,
                                                context: context,
                                                builder: (context) => Wrap(
                                                  children: const [
                                                    BotInfoBottomSheet(
                                                      botName: 'Инстачика',
                                                      botInfo:
                                                          'Напишите что-нибудь, а Инстачика придумает вам подпись для вашего Instagram',
                                                      botAssetPath:
                                                          'assets/bots/insta_chika.png',
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SafeArea(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 50),
                                      child: Wrap(
                                        spacing: 48,
                                        runSpacing: 24,
                                        alignment: WrapAlignment.center,
                                        children: [
                                          BotsAvatar(
                                            backGroundColor: kBotLightGreen,
                                            botAssetPath:
                                                'assets/bots/koroche_wiki.png',
                                            botname: 'Короче Википедия',
                                            onPressed: () async {
                                              await showModalBottomSheet(
                                                backgroundColor: kTrans,
                                                isScrollControlled: true,
                                                context: context,
                                                builder: (context) => Wrap(
                                                  children: const [
                                                    BotInfoBottomSheet(
                                                      botName:
                                                          'Короче Википедия',
                                                      botInfo:
                                                          'Напишите какое-нибудь слово, а Короче Википедия даст ему определение',
                                                      botAssetPath:
                                                          'assets/bots/koroche_wiki.png',
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                          BotsAvatar(
                                            backGroundColor: kWhite,
                                            botAssetPath:
                                                'assets/bots/cinema.png',
                                            botname: 'Недосценарист',
                                            onPressed: () async {
                                              await showModalBottomSheet(
                                                backgroundColor: kTrans,
                                                isScrollControlled: true,
                                                context: context,
                                                builder: (context) => Wrap(
                                                  children: const [
                                                    BotInfoBottomSheet(
                                                      botName: 'Недосценарист',
                                                      botInfo:
                                                          'Напишите название фильма (существующего или нет), а Недосценарист расскажет вам о чем он',
                                                      botAssetPath:
                                                          'assets/bots/cinema.png',
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                          BotsAvatar(
                                            backGroundColor: kBotOrange,
                                            botAssetPath:
                                                'assets/bots/svyatoslav.png',
                                            botname: 'Святослав Благомыслящий',
                                            onPressed: () async {
                                              await showModalBottomSheet(
                                                backgroundColor: kTrans,
                                                isScrollControlled: true,
                                                context: context,
                                                builder: (context) => Wrap(
                                                  children: const [
                                                    BotInfoBottomSheet(
                                                      botName:
                                                          'Святослав Благомыслящий',
                                                      botInfo:
                                                          'Напишите что-нибудь и получите народную мудрость от Святослава',
                                                      botAssetPath:
                                                          'assets/bots/svyatoslav.png',
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                          BotsAvatar(
                                            backGroundColor: kBotLightBlue,
                                            botAssetPath:
                                                'assets/bots/horoscope.png',
                                            botname: 'Гороскопша',
                                            onPressed: () async {
                                              await showModalBottomSheet(
                                                backgroundColor: kTrans,
                                                isScrollControlled: true,
                                                context: context,
                                                builder: (context) => Wrap(
                                                  children: const [
                                                    BotInfoBottomSheet(
                                                      botName: 'Гороскопша',
                                                      botInfo:
                                                          'Введите знак зодиака и получите персональный прогноз от эксперта Гороскопши',
                                                      botAssetPath:
                                                          'assets/bots/horoscope.png',
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
