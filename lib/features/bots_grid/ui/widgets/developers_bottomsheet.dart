import 'package:blabla/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class DevelopersBottomSheet extends StatefulWidget {
  const DevelopersBottomSheet({Key? key}) : super(key: key);

  @override
  _DevelopersBottomSheetState createState() => _DevelopersBottomSheetState();
}

class _DevelopersBottomSheetState extends State<DevelopersBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            child: Container(
              width: 80,
              height: 5,
              decoration: BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            padding: const EdgeInsets.only(
              top: 39,
              bottom: 30,
            ),
            child: Column(
              children: [
                const Text(
                  'Разработчики',
                  style: TextStyle(
                    color: kBlack,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 17,
                ),
                ExpansionPanelList(
                  expansionCallback: (int index, bool isExpanded) {
                    setState(
                      () {
                        for (final element in _devs) {
                          element.isExpanded = false;
                        }
                        _devs[index].isExpanded = !isExpanded;
                      },
                    );
                  },
                  elevation: 0,
                  children: List<ExpansionPanel>.generate(
                    _devs.length,
                    (i) {
                      final e = _devs[i];
                      return ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return ListTile(
                            title: Text(
                              e.headerValue,
                              style: const TextStyle(
                                color: kFaqBlue,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          );
                        },
                        body: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                e.expandedValue,
                                style: const TextStyle(
                                  color: kBlack,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      primary: kDarkBlue,
                                      shape: const CircleBorder(),
                                      minimumSize: Size.zero,
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      padding: const EdgeInsets.all(8),
                                    ),
                                    onPressed: () async {
                                      if (await canLaunch(e.instaUrl)) {
                                        await launch(e.instaUrl);
                                      }
                                    },
                                    child: SvgPicture.asset('assets/insta.svg'),
                                  ),
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      primary: kDarkBlue,
                                      shape: const CircleBorder(),
                                      minimumSize: Size.zero,
                                      padding: const EdgeInsets.all(8),
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                    ),
                                    onPressed: () async {
                                      if (await canLaunch(e.vkUrl)) {
                                        await launch(e.vkUrl);
                                      }
                                    },
                                    child: SvgPicture.asset('assets/vk.svg'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        isExpanded: e.isExpanded,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

final _devs = devs();

class Devs {
  String expandedValue;
  String headerValue;
  bool isExpanded;
  String instaUrl;
  String vkUrl;
  Devs({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
    required this.instaUrl,
    required this.vkUrl,
  });
}

List<Devs> devs() {
  return [
    Devs(
      expandedValue: 'UI/UX Дизайнер приложения - Хусрав Савруллоев',
      headerValue: 'Khusrav_designer',
      instaUrl: 'https://www.instagram.com/real_khusrav/',
      vkUrl: 'https://vk.com/slardark',
    ),
    Devs(
      expandedValue: 'Ведущий разработчик проекта - Суннат Савруллоев',
      headerValue: 'Sunnat_main_dev',
      instaUrl: 'https://www.instagram.com/sun_natjon/',
      vkUrl: 'https://vk.com/baka_shonen',
    ),
    Devs(
      expandedValue: 'Разработчик проекта - Нурик Мирзоев',
      headerValue: 'Nurik_dev',
      instaUrl: 'https://www.instagram.com/noor1k.23/',
      vkUrl: 'https://vk.com/captainboom23',
    ),
    Devs(
      expandedValue: 'Менеджер и идейный вдохновитель проекта - Зафар Султонов',
      headerValue: 'Zafar_manager',
      instaUrl: 'https://www.instagram.com/_zafar_zs_/',
      vkUrl: 'https://vk.com/zs_0999',
    ),
  ];
}
