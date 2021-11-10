import 'package:blabla/features/message_history/domain/entities/last_message.dart';

abstract class LastMessageRepo {
  Future<List<LastMessage>> getLastAddedMessages();
  Future<void> remove({required final LastMessage lastMessage});
  Future<void> addLastMessage({required final LastMessage lastMessage});
}
