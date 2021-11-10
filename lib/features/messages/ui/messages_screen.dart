// ignore_for_file: use_build_context_synchronously

import 'dart:async';
import 'package:blabla/core/bots/bots_list.dart';
import 'package:blabla/core/style/colors.dart';
import 'package:blabla/features/bots_grid/ui/widgets/bot_info_bottom_sheet.dart';
import 'package:blabla/features/messages/application/messages_bloc.dart';
import 'package:blabla/features/messages/data/models/user.dart';
import 'package:blabla/features/messages/domain/entities/user.dart';
import 'package:blabla/features/messages/ui/widgets/bots_writing.dart';
import 'package:blabla/features/messages/ui/widgets/message_bot_box.dart';
import 'package:blabla/features/messages/ui/widgets/message_input_field.dart';
import 'package:blabla/features/messages/ui/widgets/message_me_box.dart';
import 'package:blabla/features/messages/ui/widgets/message_upper_bar.dart';
import 'package:blabla/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tts/flutter_tts.dart';

class MessagesScreen extends StatefulWidget {
  final UserTypes userTypes;
  const MessagesScreen({
    Key? key,
    required this.userTypes,
  }) : super(key: key);

  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  TextEditingController controller = TextEditingController();
  final scrollController = ScrollController();
  late Bot botInfo;
  bool isEnabled = false;
  FlutterTts flutterTts = FlutterTts();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Timer.periodic(
      const Duration(milliseconds: 100),
      (timer) {
        if (mounted) {
          scrollController.jumpTo(
            scrollController.position.maxScrollExtent,
          );
          timer.cancel();
        }
      },
    );
  }

  @override
  void initState() {
    botInfo = getBot(widget.userTypes);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MessagesBloc>()
        ..add(
          MessagesEvent.initial(
            userType: widget.userTypes,
          ),
        ),
      child: BlocConsumer<MessagesBloc, MessagesState>(
        listener: (context, state) async {
          Timer.periodic(
            const Duration(milliseconds: 100),
            (timer) {
              if (mounted) {
                scrollController.jumpTo(
                  scrollController.position.maxScrollExtent,
                );
                timer.cancel();
              }
            },
          );
        },
        builder: (context, state) {
          return WillPopScope(
            onWillPop: () async {
              await flutterTts.stop();
              context.read<MessagesBloc>().add(const MessagesEvent.onExit());
              Navigator.pop(context, false);
              return false;
            },
            child: Scaffold(
              backgroundColor: kWhite,
              body: SafeArea(
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/background.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      ListView(
                        controller: scrollController,
                        physics: const BouncingScrollPhysics(),
                        padding: const EdgeInsets.only(
                          top: 138,
                          bottom: 110,
                          left: 13,
                          right: 13,
                        ),
                        children: getMessages(messages: state.messages),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MessageUpperBar(
                            onArrowBack: () async{
                              await flutterTts.stop();
                              context.read<MessagesBloc>().add(
                                    const MessagesEvent.onExit(),
                                  );
                              Navigator.pop(context, false);
                            },
                            botName: botInfo.name,
                            botAssetPath: botInfo.assetPath,
                            botBgColor: botInfo.color,
                            onPressed: () async {
                              await showModalBottomSheet(
                                backgroundColor: kTrans,
                                isScrollControlled: true,
                                context: context,
                                builder: (context) => Wrap(
                                  children: [
                                    BotInfoBottomSheet(
                                      botName: botInfo.name,
                                      botInfo: botInfo.botInfo,
                                      botAssetPath: botInfo.assetPath,
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (state.isBotWriting)
                                BotsWriting(
                                  bot: widget.userTypes,
                                ),
                              if (state.isBotWriting)
                                const SizedBox(
                                  height: 10,
                                ),
                              MessageInputField(
                                isEnabled: isEnabled,
                                onChanged: (e) {
                                  if (e.isNotEmpty) {
                                    setState(() {
                                      isEnabled = true;
                                    });
                                  } else {
                                    setState(() {
                                      isEnabled = false;
                                    });
                                  }
                                },
                                onSend: () {
                                  if (controller.text != "") {
                                    context.read<MessagesBloc>().add(
                                          MessagesEvent.onNewMessage(
                                            text: controller.text,
                                          ),
                                        );
                                    controller.text = "";
                                    setState(() {
                                      isEnabled = false;
                                    });
                                  }
                                },
                                editingController: controller,
                              ),
                            ],
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

  List<Widget> getMessages({required final List<MessageUi> messages}) {
    final widgets = <Widget>[];
    final bot = getBot(widget.userTypes);
    for (final e in messages) {
      if (e.userTypes != UserTypes.me) {
        widgets.add(
          MessageBotBox(
            message: e.message,
            time: e.time,
            botAssetPath: bot.assetPath,
            onVolumeTap: () async {
              if (e.userTypes == UserTypes.horoscope ||
                  e.userTypes == UserTypes.instaChika ||
                  e.userTypes == UserTypes.marketolog ||
                  e.userTypes == UserTypes.korocheWiki) {
                await flutterTts.setLanguage("ru-RU");
                await flutterTts.setVoice(
                  {"name": "ru-ru-x-rue-network", "locale": "ru-RU"},
                );
              } else {
                await flutterTts.setLanguage("ru-RU");
                await flutterTts.setVoice(
                  {"name": "ru-ru-x-ruf-network", "locale": "ru-RU"},
                );
              }
              await flutterTts.speak(e.message);
            },
            onAvatarTap: () async {
              await showModalBottomSheet(
                backgroundColor: kTrans,
                isScrollControlled: true,
                context: context,
                builder: (context) => Wrap(
                  children: [
                    BotInfoBottomSheet(
                      botName: botInfo.name,
                      botInfo: botInfo.botInfo,
                      botAssetPath: botInfo.assetPath,
                    ),
                  ],
                ),
              );
            },
            botAvatarBgColor: bot.color,
          ),
        );
      } else {
        widgets.add(
          MessageMeBox(message: e.message, time: e.time),
        );
      }
    }
    return widgets;
  }
}
