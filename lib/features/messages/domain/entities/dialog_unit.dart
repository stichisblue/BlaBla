import 'package:blabla/features/messages/domain/entities/user.dart';

class DialogUnit {
  final String question;
  final String answer;
  final User asker;
  final User replier;
  final String time;
  DialogUnit({
    required this.question,
    required this.answer,
    required this.asker,
    required this.replier,
    required this.time,
  });


  @override
  String toString() {
    return 'DialogUnit(question: $question, answer: $answer, asker: $asker, replier: $replier, time: $time)';
  }
}
