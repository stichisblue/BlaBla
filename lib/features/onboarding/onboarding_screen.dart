import 'package:blabla/core/style/colors.dart';
import 'package:blabla/features/auth/auth.dart';
import 'package:blabla/features/bots_grid/ui/bots_grid_screen.dart';
import 'package:blabla/features/onboarding/widgets/onboarding_widget.dart';
import 'package:blabla/features/onboarding/widgets/progress_widget.dart';
import 'package:blabla/features/onboarding/widgets/start_button.dart';
import 'package:blabla/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController();
  int currIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: PageView(
                  controller: controller,
                  physics: const BouncingScrollPhysics(),
                  onPageChanged: (e) {
                    setState(() {
                      currIndex = e;
                    });
                  },
                  children: const [
                    OnboardingWidget(
                      assetPath: 'assets/onboarding/splash_1.png',
                      subtitle:
                          '«Блабла» демонстрирует, как с помощью нейросетей семейства YaLM можно продолжать тексты на любую тему',
                    ),
                    OnboardingWidget(
                      assetPath: 'assets/onboarding/splash_2.png',
                      subtitle:
                          '«Блабла» может закончить историю, написать небольшой рассказ и поддержать разговор на любую тему тебе всего лишь нужно выбрать нейронного бота под тему разговора',
                    ),
                    OnboardingWidget(
                      assetPath: 'assets/onboarding/splash_3.png',
                      subtitle:
                          'Отправлйя друзьям и делай сторизы разговоров с нейронными ботами. Боты умеют не только писать, но и разговаривать',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 14,
                  right: 14,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProgressWidget(value: currIndex + 1, parts: 3),
                    BouncingButton(
                      title: currIndex == 2 ? 'Начать' : 'Пропустить',
                      onPressed: () async {
                        if (currIndex != 2) {
                          setState(() {
                            currIndex += 1;
                          });
                          await controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        } else {
                          final auth = getIt<Auth>();
                          await auth.logIn();
                          // ignore: use_build_context_synchronously
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const BotsGridScreen(),
                            ),
                          );
                        }
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
