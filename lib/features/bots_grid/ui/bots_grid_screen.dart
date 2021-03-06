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
                                            botname: '???????????? ????????',
                                            onPressed: () async {
                                              await showModalBottomSheet(
                                                backgroundColor: kTrans,
                                                isScrollControlled: true,
                                                context: context,
                                                builder: (context) => Wrap(
                                                  children: const [
                                                    BotInfoBottomSheet(
                                                      botName: '???????????? ????????',
                                                      botInfo:
                                                          '???????????????? ??????-???????????? ?? ???????????????? ???????????????????????? ?????????? ???? Mr. ??????????',
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
                                            botname: '?????? ????-????????',
                                            onPressed: () async {
                                              await showModalBottomSheet(
                                                backgroundColor: kTrans,
                                                isScrollControlled: true,
                                                context: context,
                                                builder: (context) => Wrap(
                                                  children: const [
                                                    BotInfoBottomSheet(
                                                      botName: '?????? ????-????????',
                                                      botInfo:
                                                          '???????????????? ??????????-???????????? ??????????, ?? ?????? ????-???????? ?????????????????? ?????? ???????????? ????????????????',
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
                                            botname: '??????????????????',
                                            onPressed: () async {
                                              await showModalBottomSheet(
                                                backgroundColor: kTrans,
                                                isScrollControlled: true,
                                                context: context,
                                                builder: (context) => Wrap(
                                                  children: const [
                                                    BotInfoBottomSheet(
                                                      botName: '??????????????????',
                                                      botInfo:
                                                          '???????????????? ??????-??????????, ?? ?????????????????? ?????????????????? ?????? ?????? ???? ????????????????',
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
                                            botname: '?????????? ??????',
                                            onPressed: () async {
                                              await showModalBottomSheet(
                                                backgroundColor: kTrans,
                                                isScrollControlled: true,
                                                context: context,
                                                builder: (context) => Wrap(
                                                  children: const [
                                                    BotInfoBottomSheet(
                                                      botName: '?????????? ??????',
                                                      botInfo:
                                                          '?????????????? ???????????? ????????, ?? ?????????? ?????? ?????? ??????????????????',
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
                                            botname: '????????????',
                                            onPressed: () async {
                                              await showModalBottomSheet(
                                                backgroundColor: kTrans,
                                                isScrollControlled: true,
                                                context: context,
                                                builder: (context) => Wrap(
                                                  children: const [
                                                    BotInfoBottomSheet(
                                                      botName: '????????????',
                                                      botInfo:
                                                          '?????????????? ???????????? ???????????? ?????? ???????????? ??????????????, ?? ???????????? ?????? ??????????????????',
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
                                            botname: '????????????????????????',
                                            onPressed: () async {
                                              await showModalBottomSheet(
                                                backgroundColor: kTrans,
                                                isScrollControlled: true,
                                                context: context,
                                                builder: (context) => Wrap(
                                                  children: const [
                                                    BotInfoBottomSheet(
                                                      botName: '????????????????????????',
                                                      botInfo:
                                                          '?????????????? ???????????????? ?????????? ????????????????, ?????? ?????????????? ?????? ?????????? ???????????? ?????????? - ?? ???????????????? ?????????????? ?????????????? ???????????? ???? ????????????????????????',
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
                                            botname: '???????? ?????????? ??????',
                                            onPressed: () async {
                                              await showModalBottomSheet(
                                                backgroundColor: kTrans,
                                                isScrollControlled: true,
                                                context: context,
                                                builder: (context) => Wrap(
                                                  children: const [
                                                    BotInfoBottomSheet(
                                                      botName: '???????? ?????????? ??????',
                                                      botInfo:
                                                          '?????????????? ???????????? ??????????????, ?? ???????? ?????????? ?????? ?????????????????? - ???????????? ??????????????, ???? ???????? ????????????',
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
                                            botname: '??????????????????',
                                            onPressed: () async {
                                              await showModalBottomSheet(
                                                backgroundColor: kTrans,
                                                isScrollControlled: true,
                                                context: context,
                                                builder: (context) => Wrap(
                                                  children: const [
                                                    BotInfoBottomSheet(
                                                      botName: '??????????????????',
                                                      botInfo:
                                                          '???????????????? ??????-????????????, ?? ?????????????????? ?????????????????? ?????? ?????????????? ?????? ???????????? Instagram',
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
                                            botname: '???????????? ??????????????????',
                                            onPressed: () async {
                                              await showModalBottomSheet(
                                                backgroundColor: kTrans,
                                                isScrollControlled: true,
                                                context: context,
                                                builder: (context) => Wrap(
                                                  children: const [
                                                    BotInfoBottomSheet(
                                                      botName:
                                                          '???????????? ??????????????????',
                                                      botInfo:
                                                          '???????????????? ??????????-???????????? ??????????, ?? ???????????? ?????????????????? ???????? ?????? ??????????????????????',
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
                                            botname: '??????????????????????????',
                                            onPressed: () async {
                                              await showModalBottomSheet(
                                                backgroundColor: kTrans,
                                                isScrollControlled: true,
                                                context: context,
                                                builder: (context) => Wrap(
                                                  children: const [
                                                    BotInfoBottomSheet(
                                                      botName: '??????????????????????????',
                                                      botInfo:
                                                          '???????????????? ???????????????? ???????????? (?????????????????????????? ?????? ??????), ?? ?????????????????????????? ?????????????????? ?????? ?? ?????? ????',
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
                                            botname: '?????????????????? ??????????????????????????',
                                            onPressed: () async {
                                              await showModalBottomSheet(
                                                backgroundColor: kTrans,
                                                isScrollControlled: true,
                                                context: context,
                                                builder: (context) => Wrap(
                                                  children: const [
                                                    BotInfoBottomSheet(
                                                      botName:
                                                          '?????????????????? ??????????????????????????',
                                                      botInfo:
                                                          '???????????????? ??????-???????????? ?? ???????????????? ???????????????? ???????????????? ???? ????????????????????',
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
                                            botname: '????????????????????',
                                            onPressed: () async {
                                              await showModalBottomSheet(
                                                backgroundColor: kTrans,
                                                isScrollControlled: true,
                                                context: context,
                                                builder: (context) => Wrap(
                                                  children: const [
                                                    BotInfoBottomSheet(
                                                      botName: '????????????????????',
                                                      botInfo:
                                                          '?????????????? ???????? ?????????????? ?? ???????????????? ???????????????????????? ?????????????? ???? ???????????????? ????????????????????',
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
