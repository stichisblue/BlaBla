import 'package:blabla/features/messages/data/models/message_remote_model.dart';
import 'package:blabla/features/messages/data/models/user.dart';
import 'package:blabla/features/messages/domain/entities/remote_message.dart';
import 'package:blabla/features/messages/domain/repository/message_remote_repo.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

const urlBlaBla = "https://yandex.ru/lab/api/yalm/text3";

@LazySingleton(as: MessageRemoteRepo)
class MessageRemoteRepoImpl extends MessageRemoteRepo {
  final Dio dio;
  MessageRemoteRepoImpl({
    required this.dio,
  });
  @override
  Future<RemoteMessage> getAnswer({
    required UserTypes userTypes,
    required String query,
  }) async {
    final data = {
      "query": query,
      "filter": userTypes.index,
    };
    final res = await dio.post(
      urlBlaBla,
      data: data,
    );
    return MessageRemoteModel.fromMap(res.data);
  }
}
