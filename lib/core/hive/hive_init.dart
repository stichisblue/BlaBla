import 'package:blabla/features/bots_grid/data/models/profile_model.dart';
import 'package:blabla/features/message_history/data/models/last_message_model.dart';
import 'package:blabla/features/messages/data/models/dialog_unit_model.dart';
import 'package:blabla/features/messages/data/models/user.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

Future<void> initHive() async {
  final appDocumentDir = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);
  Hive.registerAdapter(ProfileModelAdapter());
  Hive.registerAdapter(DialogUintModelAdapter());
  Hive.registerAdapter(UserTypesAdapter());
  Hive.registerAdapter(UserModelAdapter());
  Hive.registerAdapter(LastMessageModelAdapter());
}
