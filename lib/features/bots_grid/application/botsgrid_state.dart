part of 'botsgrid_bloc.dart';

@freezed
class BotsgridState with _$BotsgridState {
  const factory BotsgridState({
    required final bool changeInfo,
    required final bool hasPhoto,
    required final bool hasName,
    required final String name,
    required final String filePath,
  }) = _BotsgridState;
  factory BotsgridState.initial() => const BotsgridState(
        changeInfo: false,
        hasPhoto: false,
        hasName: false,
        name: '',
        filePath: '',
      );
}
