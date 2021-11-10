import 'package:blabla/features/auth/auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'switchscreen_bloc.freezed.dart';
part 'switchscreen_event.dart';
part 'switchscreen_state.dart';

@injectable
class SwitchscreenBloc extends Bloc<SwitchscreenEvent, SwitchscreenState> {
  final Auth auth;
  SwitchscreenBloc(
    this.auth,
  ) : super(SwitchscreenState.initial()) {
    on<SwitchscreenEvent>(
      (event, emit) async {
        await event.map(
          started: (e) async {
            emit(state.copyWith(isSubmitting: true));
            final isLoggedIn = await auth.loggedIn();
            if (isLoggedIn) {
              emit(
                state.copyWith(
                  isSubmitting: false,
                  screen: Screens.main,
                ),
              );
            } else {
              emit(
                state.copyWith(
                  isSubmitting: false,
                  screen: Screens.onboarding,
                ),
              );
            }
          },
        );
      },
    );
  }
}
