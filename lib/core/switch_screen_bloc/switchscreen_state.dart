part of 'switchscreen_bloc.dart';

enum Screens {
  onboarding,
  main,
}

@freezed
class SwitchscreenState with _$SwitchscreenState {
  const factory SwitchscreenState({
    required final bool isSubmitting,
    required final Screens screen,
  }) = _SwitchscreenState;
  factory SwitchscreenState.initial() => SwitchscreenState(
        isSubmitting: false,
        screen: Screens.main,
      );
}
