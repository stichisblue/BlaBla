part of 'botsgrid_bloc.dart';

@freezed
class BotsgridEvent with _$BotsgridEvent {
  const factory BotsgridEvent.initial() = BotsgridEventInitial;
  const factory BotsgridEvent.onPenTap() = BotsgridEventOnPenTap;
  const factory BotsgridEvent.onPhotoChanged({
    required final String filePath,
  }) = BotsgridEventOnPhotoChanged;
  const factory BotsgridEvent.onChangesSaved({
    final String? name,
    final String? filePath,
  }) = BotsGridEventOnChangesSaved;
}
