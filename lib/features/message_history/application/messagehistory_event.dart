part of 'messagehistory_bloc.dart';

@freezed
class MessagehistoryEvent with _$MessagehistoryEvent {
  const factory MessagehistoryEvent.intial() = MessagehistoryEventInitial;
  const factory MessagehistoryEvent.onRemove({
    required final LastMessage lastMessage,
  }) = MessagehistoryEventOnRemove;
  const factory MessagehistoryEvent.refresh() = MessagehistoryEventRefresh;
}
