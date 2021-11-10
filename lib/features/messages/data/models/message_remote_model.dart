import 'package:blabla/features/messages/domain/entities/remote_message.dart';

class MessageRemoteModel extends RemoteMessage {
  final String query;
  final String content;
  MessageRemoteModel({
    required this.query,
    required this.content,
  }) : super(text: query + content);

  Map<String, dynamic> toMap() {
    return {
      'query': query,
      'text': content,
    };
  }

  factory MessageRemoteModel.fromMap(dynamic map) {
    return MessageRemoteModel(
      query: map['query'] as String,
      content: map['text'] as String,
    );
  }
}
