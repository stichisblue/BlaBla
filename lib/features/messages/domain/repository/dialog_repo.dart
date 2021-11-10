import 'package:blabla/features/messages/domain/entities/dialog_unit.dart';
import 'package:blabla/features/messages/domain/entities/user.dart';

abstract class DialogRepo {
  Future<void> addMessage({required final DialogUnit message});
  Future<List<DialogUnit>> getAllMessages({required final User user});
}
