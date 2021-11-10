import 'package:blabla/features/bots_grid/domain/entities/profile.dart';
import 'package:hive/hive.dart';

part 'profile_model.g.dart';

const String profileBox = "profileBox";

@HiveType(typeId: 0)
class ProfileModel extends Profile {
  @HiveField(0)
  final String? name;
  @HiveField(1)
  final String? filePath;

  ProfileModel({
    this.name,
    this.filePath,
  }) : super(
          filePath: filePath,
          name: name,
        );
}
