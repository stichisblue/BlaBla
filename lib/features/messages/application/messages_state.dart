part of 'messages_bloc.dart';

@freezed
class MessagesState with _$MessagesState {
  const factory MessagesState({
    required final List<MessageUi> messages,
    required final bool isSubmitting,
    required final bool isBotWriting
  }) = _MessagesState;
  factory MessagesState.initial() => const MessagesState(
        messages: [],
        isSubmitting: false,
        isBotWriting: false,
      );
}
