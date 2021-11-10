import 'package:blabla/features/bots_grid/domain/entities/profile.dart';
import 'package:blabla/features/bots_grid/domain/repositories/profile_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'botsgrid_bloc.freezed.dart';
part 'botsgrid_event.dart';
part 'botsgrid_state.dart';

@injectable
class BotsgridBloc extends Bloc<BotsgridEvent, BotsgridState> {
  final ProfileRepo profileRepo;
  BotsgridBloc(
    this.profileRepo,
  ) : super(BotsgridState.initial()) {
    on<BotsgridEvent>(
      (event, emit) async {
        await event.map(
          initial: (e) async {
            final hasName = await profileRepo.hasName();
            final hasPhoto = await profileRepo.hasPhoto();
            late Profile profile;
            if (hasName && hasPhoto) {
              profile = await profileRepo.getProfile();
              emit(
                state.copyWith(
                  hasName: true,
                  hasPhoto: true,
                  filePath: profile.filePath!,
                  name: profile.name!,
                ),
              );
            } else if (hasName) {
              profile = await profileRepo.getProfile();
              emit(
                state.copyWith(
                  hasName: true,
                  hasPhoto: false,
                  name: profile.name!,
                ),
              );
            } else if (hasPhoto) {
              profile = await profileRepo.getProfile();
              emit(
                state.copyWith(
                  hasName: false,
                  hasPhoto: true,
                  filePath: profile.filePath!,
                ),
              );
            }
          },
          onPenTap: (e) {
            emit(
              state.copyWith(
                changeInfo: true,
              ),
            );
          },
          onChangesSaved: (e) async {
            if (e.name != null && e.filePath != null) {
              await profileRepo.addPhoto(filePath: e.filePath!);
              await profileRepo.changeName(name: e.name!);
              emit(
                state.copyWith(
                  hasName: true,
                  hasPhoto: true,
                  name: e.name!,
                  filePath: e.filePath!,
                  changeInfo: false,
                ),
              );
            } else if (e.name != null) {
              await profileRepo.changeName(name: e.name!);
              emit(
                state.copyWith(
                  hasName: true,
                  name: e.name!,
                  changeInfo: false,
                ),
              );
            } else if (e.filePath != null) {
              await profileRepo.addPhoto(filePath: e.filePath!);
              emit(
                state.copyWith(
                  hasPhoto: true,
                  filePath: e.filePath!,
                  changeInfo: false,
                ),
              );
            }
          },
          onPhotoChanged: (e) {
            emit(
              state.copyWith(
                hasPhoto: true,
                filePath: e.filePath,
              ),
            );
          },
        );
      },
    );
  }
}
