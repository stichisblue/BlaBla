// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i5;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/injectable_modules/injectable_modules.dart' as _i19;
import 'core/switch_screen_bloc/switchscreen_bloc.dart' as _i18;
import 'features/auth/auth.dart' as _i15;
import 'features/auth/auth_impl.dart' as _i16;
import 'features/bots_grid/application/botsgrid_bloc.dart' as _i17;
import 'features/bots_grid/data/repositories/profile_repo_impl.dart' as _i14;
import 'features/bots_grid/domain/repositories/profile_repo.dart' as _i13;
import 'features/message_history/application/messagehistory_bloc.dart' as _i11;
import 'features/message_history/data/repositories/last_message_repo_impl.dart'
    as _i8;
import 'features/message_history/domain/repository/last_message_repo.dart'
    as _i7;
import 'features/messages/application/messages_bloc.dart' as _i12;
import 'features/messages/data/repository/message_remote_repo_impl.dart'
    as _i10;
import 'features/messages/data/repository/message_repo_impl.dart' as _i4;
import 'features/messages/domain/repository/dialog_repo.dart' as _i3;
import 'features/messages/domain/repository/message_remote_repo.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModules = _$InjectableModules();
  gh.lazySingleton<_i3.DialogRepo>(() => _i4.MessageRepoImpl());
  gh.lazySingleton<_i5.Dio>(() => injectableModules.dio);
  gh.lazySingleton<_i6.FlutterSecureStorage>(
      () => injectableModules.secureStorage);
  gh.lazySingleton<_i7.LastMessageRepo>(() => _i8.LastMessageRepoImpl());
  gh.lazySingleton<_i9.MessageRemoteRepo>(
      () => _i10.MessageRemoteRepoImpl(dio: get<_i5.Dio>()));
  gh.factory<_i11.MessagehistoryBloc>(
      () => _i11.MessagehistoryBloc(get<_i7.LastMessageRepo>()));
  gh.factory<_i12.MessagesBloc>(() => _i12.MessagesBloc(
      get<_i9.MessageRemoteRepo>(),
      get<_i3.DialogRepo>(),
      get<_i7.LastMessageRepo>()));
  gh.lazySingleton<_i13.ProfileRepo>(() => _i14.ProfileRepoImpl());
  gh.lazySingleton<_i15.Auth>(
      () => _i16.AuthImpl(secureStorage: get<_i6.FlutterSecureStorage>()));
  gh.factory<_i17.BotsgridBloc>(
      () => _i17.BotsgridBloc(get<_i13.ProfileRepo>()));
  gh.factory<_i18.SwitchscreenBloc>(
      () => _i18.SwitchscreenBloc(get<_i15.Auth>()));
  return get;
}

class _$InjectableModules extends _i19.InjectableModules {}
