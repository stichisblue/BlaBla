import 'package:blabla/core/style/colors.dart';
import 'package:blabla/features/bots_grid/ui/widgets/developers_bottomsheet.dart';
import 'package:blabla/features/bots_grid/ui/widgets/faq_botomsheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticOut,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: kDarkBlue,
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(top: 120, left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton.icon(
              onPressed: () async {
                await showModalBottomSheet(
                  backgroundColor: kTrans,
                  isScrollControlled: true,
                  context: context,
                  builder: (context) => Wrap(
                    children: const [
                      FAQBottomSheet(),
                    ],
                  ),
                );
              },
              icon: SvgPicture.asset('assets/alert.svg'),
              label: const Text(
                'FAQ',
                style: TextStyle(
                  color: kWhite,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            TextButton.icon(
              onPressed: () async {
                await showModalBottomSheet(
                  backgroundColor: kTrans,
                  isScrollControlled: true,
                  context: context,
                  builder: (context) => Wrap(
                    children: const [
                      DevelopersBottomSheet(),
                    ],
                  ),
                );
              },
              icon: SvgPicture.asset('assets/help.svg'),
              label: const Text(
                'О разработчиках',
                style: TextStyle(
                  color: kWhite,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 150,
            ),
            RotationTransition(
              turns: _animation,
              child: SvgPicture.asset(
                'assets/blabla_logo.svg',
                height: 160,
                width: 160,
                color: kWhite.withOpacity(0.16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
