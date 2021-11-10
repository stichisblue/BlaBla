import 'package:blabla/features/messages/data/models/user.dart';
import 'package:blabla/features/messages/domain/entities/dialog_unit.dart';
import 'package:hive/hive.dart';

part 'dialog_unit_model.g.dart';

const String messageModelBox = "messageModelBox";

@HiveType(typeId: 5)
class DialogUintModel extends DialogUnit {
  @HiveField(0)
  final UserModel askerModel;
  @HiveField(1)
  final UserModel replierModel;
  @HiveField(2)
  final String time;
  @HiveField(3)
  final String question;
  @HiveField(4)
  final String answer;
  DialogUintModel({
    required this.askerModel,
    required this.replierModel,
    required this.time,
    required this.question,
    required this.answer,
  }) : super(
          answer: answer,
          question: question,
          replier: replierModel,
          asker: askerModel,
          time: time,
        );
}
