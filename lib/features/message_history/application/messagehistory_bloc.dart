import 'package:blabla/features/message_history/domain/entities/last_message.dart';
import 'package:blabla/features/message_history/domain/repository/last_message_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'messagehistory_event.dart';
part 'messagehistory_state.dart';
part 'messagehistory_bloc.freezed.dart';

@injectable
class MessagehistoryBloc
    extends Bloc<MessagehistoryEvent, MessagehistoryState> {
  final LastMessageRepo lastMessageRepo;
  MessagehistoryBloc(this.lastMessageRepo)
      : super(MessagehistoryState.initial()) {
    on<MessagehistoryEvent>(
      (event, emit) async {
        await event.map(
          intial: (e) async {
            emit(state.copyWith(isSubmitting: true));
            final res = await lastMessageRepo.getLastAddedMessages();
            emit(
              state.copyWith(
                lastMessages: res,
                isSubmitting: false,
              ),
            );
          },
          onRemove: (e) async {
            emit(state.copyWith(isSubmitting: true));
            await lastMessageRepo.remove(lastMessage: e.lastMessage);
            final res = await lastMessageRepo.getLastAddedMessages();
            emit(
              state.copyWith(
                lastMessages: res,
                isSubmitting: false,
              ),
            );
          },
          refresh: (e) async {
            emit(state.copyWith(isSubmitting: true));
            final res = await lastMessageRepo.getLastAddedMessages();
            emit(
              state.copyWith(
                lastMessages: res,
                isSubmitting: false,
              ),
            );
          },
        );
      },
    );
  }
}
