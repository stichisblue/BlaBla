part of 'messages_bloc.dart';

@freezed
class MessagesEvent with _$MessagesEvent {
  const factory MessagesEvent.initial({required final UserTypes userType}) =
      MessageEventInitial;
  const factory MessagesEvent.onNewMessage({required final String text}) =
      MessagesEventOnNewMessage;

  const factory MessagesEvent.onExit() = MessagesEventOnExit;
}
