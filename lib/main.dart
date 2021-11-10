import 'package:blabla/core/style/colors.dart';
import 'package:blabla/features/bots_grid/ui/bots_grid_screen.dart';
import 'package:blabla/features/onboarding/onboarding_screen.dart';
import 'package:blabla/injection.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'core/hive/hive_init.dart';
import 'core/switch_screen_bloc/switchscreen_bloc.dart';

// Register the RouteObserver as a navigation observer.
final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  await initHive();
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SwitchscreenBloc>()
        ..add(
          const SwitchscreenEvent.started(),
        ),
      child: BlocBuilder<SwitchscreenBloc, SwitchscreenState>(
        builder: (context, state) {
          if (state.isSubmitting) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              useInheritedMediaQuery: true,
              locale: DevicePreview.locale(context),
              home: Scaffold(
                backgroundColor: kBgBlue,
                body: Center(
                  child: Image.asset(
                    'assets/splash.png',
                  ),
                ),
              ),
            );
          } else {
            return MaterialApp(
              title: 'Bla-Bla',
              debugShowCheckedModeBanner: false,
              useInheritedMediaQuery: true,
              locale: DevicePreview.locale(context),
              navigatorObservers: [
                routeObserver,
              ],
              theme: ThemeData(
                fontFamily: 'Gilroy',
              ),
              home: state.screen == Screens.main
                  ? const BotsGridScreen()
                  : const OnboardingScreen(),
            );
          }
        },
      ),
    );
  }
}
