import 'package:blabla/features/messages/data/models/user.dart';

class LastMessage {
  final String time;
  final String text;
  final UserTypes userType;
  LastMessage({
    required this.time,
    required this.text,
    required this.userType,
  });

  @override
  String toString() => 'LastMessage(time: $time, text: $text, userType: $userType)';
}
