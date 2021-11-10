import 'package:blabla/features/messages/data/models/user.dart';
import 'package:blabla/features/messages/domain/entities/remote_message.dart';

abstract class MessageRemoteRepo {
  Future<RemoteMessage> getAnswer({
    required final UserTypes userTypes,
    required final String query,
  });
}
