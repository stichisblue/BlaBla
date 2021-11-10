import 'package:blabla/features/messages/data/models/dialog_unit_model.dart';
import 'package:blabla/features/messages/data/models/user.dart';
import 'package:blabla/features/messages/domain/entities/dialog_unit.dart';
import 'package:blabla/features/messages/domain/entities/user.dart';
import 'package:blabla/features/messages/domain/repository/dialog_repo.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DialogRepo)
class MessageRepoImpl extends DialogRepo {
  @override
  Future<void> addMessage({required DialogUnit message}) async {
    final box = await Hive.openBox<DialogUintModel>(messageModelBox);
    final mModel = DialogUintModel(
      askerModel: UserModel(
        userTypes: message.asker.userTypes,
      ),
      replierModel: UserModel(
        userTypes: message.replier.userTypes,
      ),
      answer: message.answer,
      question: message.question,
      time: message.time,
    );
    await box.add(mModel);
  }

  @override
  Future<List<DialogUnit>> getAllMessages({required User user}) async {
    final box = await Hive.openBox<DialogUintModel>(messageModelBox);
    final map = box.toMap();
    final List<DialogUnit> dialogs = [];
    map.forEach(
      (key, value) {
        if (value.replierModel.userTypes == user.userTypes) {
          dialogs.add(value);
        }
      },
    );
    return dialogs;
  }
}
