import 'package:blabla/features/message_history/domain/entities/last_message.dart';
import 'package:blabla/features/messages/data/models/user.dart';
import 'package:hive/hive.dart';

part 'last_message_model.g.dart';

const String lastMessageBox = "lastMessageBox";

@HiveType(typeId: 6)
class LastMessageModel extends LastMessage {
  @HiveField(0)
  final String text;
  @HiveField(1)
  final String time;
  @HiveField(2)
  final UserTypes userType;
  LastMessageModel({
    required this.text,
    required this.time,
    required this.userType,
  }) : super(
          text: text,
          time: time,
          userType: userType,
        );
}
