import 'package:blabla/features/message_history/domain/entities/last_message.dart';
import 'package:blabla/features/message_history/domain/repository/last_message_repo.dart';
import 'package:blabla/features/messages/data/models/user.dart';
import 'package:blabla/features/messages/domain/entities/dialog_unit.dart';
import 'package:blabla/features/messages/domain/entities/user.dart';
import 'package:blabla/features/messages/domain/repository/dialog_repo.dart';
import 'package:blabla/features/messages/domain/repository/message_remote_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

part 'messages_bloc.freezed.dart';
part 'messages_event.dart';
part 'messages_state.dart';

class MessageUi {
  final UserTypes userTypes;
  final String message;
  final String time;
  MessageUi({
    required this.userTypes,
    required this.message,
    required this.time,
  });
}

@injectable
class MessagesBloc extends Bloc<MessagesEvent, MessagesState> {
  final MessageRemoteRepo remoteRepo;
  final DialogRepo messageRepo;
  final LastMessageRepo lastMessageRepo;
  late UserTypes userTypes;
  late List<MessageUi> messages = [];
  LastMessage? lastMessage;
  MessagesBloc(
    this.remoteRepo,
    this.messageRepo,
    this.lastMessageRepo,
  ) : super(MessagesState.initial()) {
    on<MessagesEvent>(
      (event, emit) async {
        await event.map(
          initial: (e) async {
            userTypes = e.userType;
            final dialogs = await messageRepo.getAllMessages(
              user: User(userTypes: e.userType),
            );
            messages = getMessagesUi(dialogs);
            emit(
              state.copyWith(
                messages: messages,
              ),
            );
          },
          onNewMessage: (e) async {
            messages.add(
              MessageUi(
                userTypes: UserTypes.me,
                message: e.text,
                time: getTime(),
              ),
            );
            emit(
              state.copyWith(
                isSubmitting: true,
                isBotWriting: true,
                messages: messages,
              ),
            );
            final res = await remoteRepo.getAnswer(
              userTypes: userTypes,
              query: e.text,
            );
            lastMessage = LastMessage(
              time: getTime(),
              text: res.text,
              userType: userTypes,
            );
            print(lastMessage);
            final dialog = DialogUnit(
              asker: User(userTypes: UserTypes.me),
              replier: User(userTypes: userTypes),
              question: e.text,
              answer: res.text,
              time: getTime(),
            );
            await messageRepo.addMessage(message: dialog);
            messages.add(
              MessageUi(
                userTypes: userTypes,
                message: res.text,
                time: getTime(),
              ),
            );

            emit(
              state.copyWith(
                messages: messages,
                isSubmitting: false,
                isBotWriting: false,
              ),
            );
          },
          onExit: (e) async {
            if (lastMessage != null) {
              await lastMessageRepo.addLastMessage(lastMessage: lastMessage!);
            }
          },
        );
      },
    );
  }

  List<MessageUi> getMessagesUi(List<DialogUnit> dialogs) {
    List<MessageUi> messages = [];
    for (final element in dialogs) {
      messages.add(
        MessageUi(
          userTypes: UserTypes.me,
          message: element.question,
          time: element.time,
        ),
      );
      messages.add(
        MessageUi(
          userTypes: element.replier.userTypes,
          message: element.answer,
          time: element.time,
        ),
      );
    }
    return messages;
  }

  String getTime() {
    final now = DateTime.now();
    return DateFormat.Hm().format(now);
  }
}
