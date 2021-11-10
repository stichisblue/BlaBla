import 'package:blabla/core/style/colors.dart';
import 'package:flutter/material.dart';

class FAQBottomSheet extends StatefulWidget {
  const FAQBottomSheet({Key? key}) : super(key: key);

  @override
  _FAQBottomSheetState createState() => _FAQBottomSheetState();
}

class _FAQBottomSheetState extends State<FAQBottomSheet> {
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
                  'FAQ',
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
                        for (final element in _data) {
                          element.isExpanded = false;
                        }
                        _data[index].isExpanded = !isExpanded;
                      },
                    );
                  },
                  elevation: 0,
                  children: List<ExpansionPanel>.generate(
                    _data.length,
                    (i) {
                      final e = _data[i];
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
                          title: Text(
                            e.expandedValue,
                            style: const TextStyle(
                              color: kBlack,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
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

class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

final _data = faqs();

List<Item> faqs() {
  return [
    Item(
      expandedValue:
          'Внутри Bla-bla — разработанная командой Яндекса языковая модель YaLM (Yet another Language Model), вдохновленная GPT-3 от компании OpenAI и другими языковыми моделями на архитектуре Transformer. У такой модели ровно одна задача — генерировать каждое последующее слово в предложении. Чтобы текст получился связным и грамматически правильным, во время обучения модель оценивает каждое предсказанное слово: например, решает может ли после «Мама мыла...» идти слово «бегать» или слово «раму».',
      headerValue: 'Как работает Bla-bla?',
    ),
    Item(
      expandedValue:
          'У Bla-bla нет своего мнения или знания. Он умеет только подражать — писать тексты так, чтобы они были максимально похожи на реальные тексты из интернета.',
      headerValue: 'Есть ли у Bla-bla свое мнение?',
    ),
    Item(
      expandedValue:
          'Возрастное ограничение 18+, генератор может выдавать нецензурную лексику',
      headerValue: 'Предупреждение от Bla-bla',
    ),
    Item(
      expandedValue:
          'Генератор может выдавать очень странные тексты. Пожалуйста, будьте разумны, распространяя их. Подумайте, не будет ли текст обидным для кого-то и не станет ли его публикация нарушением закона.',
      headerValue: 'Какие тексты можно встретить?',
    ),
  ];
}
