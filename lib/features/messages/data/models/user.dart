import 'package:blabla/core/style/colors.dart';
import 'package:blabla/features/messages/domain/entities/user.dart';
import 'package:hive/hive.dart';
part 'user.g.dart';


const String userTypesBox = "userTypesBox";

@HiveType(typeId: 2)
enum UserTypes {
  @HiveField(0)
  misterMix,
  @HiveField(1)
  renTv,
  @HiveField(2)
  journalist,
  @HiveField(3)
  granny,
  @HiveField(4)
  gopnik,
  @HiveField(5)
  marketolog,
  @HiveField(6)
  shortStoryMan,
  @HiveField(7)
  instaChika,
  @HiveField(8)
  korocheWiki,
  @HiveField(9)
  cinema,
  @HiveField(10)
  horoscope,
  @HiveField(11)
  svyatoslav,
  @HiveField(12)
  me,
}

const String userModelBox = "userModelBox";

@HiveType(typeId: 3)
class UserModel extends User {
  @override
  @HiveField(0)
  final UserTypes userTypes;
  UserModel({required this.userTypes})
      : super(
          userTypes: userTypes,
        );
}
