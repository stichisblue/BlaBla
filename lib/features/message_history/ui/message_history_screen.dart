import 'package:blabla/core/bots/bots_list.dart';
import 'package:blabla/core/style/colors.dart';
import 'package:blabla/core/widgets/app_bar_with_arrow_back.dart';
import 'package:blabla/core/widgets/bot_avatar.dart';
import 'package:blabla/features/message_history/application/messagehistory_bloc.dart';
import 'package:blabla/features/message_history/ui/widgets/last_conversation_list_tile.dart';
import 'package:blabla/features/message_history/ui/widgets/message_container.dart';
import 'package:blabla/features/messages/ui/messages_screen.dart';
import 'package:blabla/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MessageHistoryScreen extends StatefulWidget {
  const MessageHistoryScreen({Key? key}) : super(key: key);

  @override
  _MessageHistoryScreenState createState() => _MessageHistoryScreenState();
}

class _MessageHistoryScreenState extends State<MessageHistoryScreen>
    with RouteAware {
  bool isEmpty = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MessagehistoryBloc>()
        ..add(
          const MessagehistoryEvent.intial(),
        ),
      child: BlocConsumer<MessagehistoryBloc, MessagehistoryState>(
        listener: (context, state) {
          isEmpty = state.lastMessages.isEmpty;
        },
        builder: (context, state) {
          return Scaffold(
            body: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/background.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: SafeArea(
                bottom: false,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 6,
                      ),
                      child: AppBarWithArrowBack(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 26),
                      child: Text(
                        'Выбери собеседника',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: kWhite,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 34,
                    ),
                    if (isEmpty)
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 13,
                          right: 13,
                        ),
                        child: Wrap(
                          spacing: 16,
                          runSpacing: 16,
                          children: List<BotAvatar>.generate(
                            botList.length,
                            (i) => BotAvatar(
                              backGroundColor: botList[i].color,
                              botAssetPath: botList[i].assetPath,
                              height: 70,
                              width: 70,
                              onPressed: () async {
                                await Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => MessagesScreen(
                                      userTypes: botList[i].userTypes,
                                    ),
                                  ),
                                );
                                if (mounted) {
                                  context.read<MessagehistoryBloc>().add(
                                        const MessagehistoryEvent.refresh(),
                                      );
                                }
                              },
                            ),
                          ),
                        ),
                      )
                    else
                      Expanded(
                        child: ListView(
                          physics: const BouncingScrollPhysics(),
                          padding: const EdgeInsets.only(left: 26, right: 26),
                          scrollDirection: Axis.horizontal,
                          clipBehavior: Clip.antiAlias,
                          children: getListView(
                            List<BotAvatar>.generate(
                              botList.length,
                              (i) => BotAvatar(
                                backGroundColor: botList[i].color,
                                botAssetPath: botList[i].assetPath,
                                onPressed: () async {
                                  await Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => MessagesScreen(
                                        userTypes: botList[i].userTypes,
                                      ),
                                    ),
                                  );
                                  if (mounted) {
                                    context.read<MessagehistoryBloc>().add(
                                          const MessagehistoryEvent.refresh(),
                                        );
                                  }
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    const SizedBox(
                      height: 30,
                    ),
                    if (!isEmpty)
                      Expanded(
                        flex: 6,
                        child: MessageContainer(
                          child: ListView(
                            physics: const BouncingScrollPhysics(),
                            padding: const EdgeInsets.only(
                              top: 15,
                              bottom: 15,
                            ),
                            children: List<Widget>.generate(
                              state.lastMessages.length,
                              (i) {
                                final e = state.lastMessages[i];
                                final bot = getBot(e.userType);
                                return LastConversationListTile(
                                  botAssetPath: bot.assetPath,
                                  botName: bot.name,
                                  time: e.time,
                                  lastMessage: e.text,
                                  color: bot.color,
                                  onTap: () async {
                                    await Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => MessagesScreen(
                                          userTypes: bot.userTypes,
                                        ),
                                      ),
                                    );
                                    if (mounted) {
                                      context.read<MessagehistoryBloc>().add(
                                            const MessagehistoryEvent.refresh(),
                                          );
                                    }
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  List<Widget> getListView(List<BotAvatar> bots) {
    final List<Widget> list = [];
    for (final e in bots) {
      list.add(e);
      list.add(
        const SizedBox(
          width: 17,
        ),
      );
    }
    return list;
  }
}
