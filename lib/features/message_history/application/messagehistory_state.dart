part of 'messagehistory_bloc.dart';

@freezed
class MessagehistoryState with _$MessagehistoryState {
  const factory MessagehistoryState({
    required final List<LastMessage> lastMessages,
    required final bool isSubmitting,
  }) = _MessagehistoryState;
  factory MessagehistoryState.initial() => const MessagehistoryState(
        lastMessages: [],
        isSubmitting: false,
      );
}
