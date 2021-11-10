import 'package:blabla/features/message_history/data/models/last_message_model.dart';
import 'package:blabla/features/message_history/domain/entities/last_message.dart';
import 'package:blabla/features/message_history/domain/repository/last_message_repo.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: LastMessageRepo)
class LastMessageRepoImpl extends LastMessageRepo {
  @override
  Future<List<LastMessage>> getLastAddedMessages() async {
    final box = await Hive.openBox<LastMessageModel>(lastMessageBox);
    if (box.isEmpty) {
      return [];
    } else {
      final list = box.values.toList();
      return list.reversed.toList();
    }
  }

  @override
  Future<void> remove({required LastMessage lastMessage}) async {
    final box = await Hive.openBox<LastMessageModel>(lastMessageBox);
    final map = box.toMap();
    map.forEach(
      (key, value) async {
        if (value.userType == lastMessage.userType) {
          await box.delete(key);
        }
      },
    );
  }

  @override
  Future<void> addLastMessage({required LastMessage lastMessage}) async {
    final box = await Hive.openBox<LastMessageModel>(lastMessageBox);
    final map = box.toMap();
    final lModel = LastMessageModel(
      text: lastMessage.text,
      time: lastMessage.time,
      userType: lastMessage.userType,
    );
    map.forEach(
      (key, value) async {
        if (value.userType == lastMessage.userType) {
          await box.delete(key);
        }
      },
    );
    await box.add(lModel);
  }
}
