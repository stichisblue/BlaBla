import 'package:blabla/features/bots_grid/data/models/profile_model.dart';
import 'package:blabla/features/bots_grid/domain/entities/profile.dart';
import 'package:blabla/features/bots_grid/domain/repositories/profile_repo.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ProfileRepo)
class ProfileRepoImpl implements ProfileRepo {
  @override
  Future<void> addPhoto({required String filePath}) async {
    final box = await Hive.openBox<ProfileModel>(profileBox);
    final Map<dynamic, ProfileModel> map = box.toMap();
    Profile? profile;
    dynamic key;
    map.forEach(
      (key, value) {
        profile = value;
        key = key;
      },
    );
    if (profile != null && profile!.name != null) {
      final name = profile!.name!;
      profile = ProfileModel(name: name, filePath: filePath);
      await box.delete(key);
    } else {
      profile = ProfileModel(filePath: filePath);
    }
    await box.add(profile! as ProfileModel);
  }

  @override
  Future<void> changeName({required String name}) async {
    final box = await Hive.openBox<ProfileModel>(profileBox);
    final Map<dynamic, ProfileModel> map = box.toMap();
    Profile? profile;
    dynamic key;
    map.forEach(
      (key, value) {
        profile = value;
        key = key;
      },
    );
    if (profile != null && profile!.filePath != null) {
      final path = profile!.filePath!;
      profile = ProfileModel(name: name, filePath: path);
      await box.delete(key);
    } else {
      profile = ProfileModel(name: name);
    }
    await box.add(profile! as ProfileModel);
  }

  @override
  Future<bool> hasName() async {
    final box = await Hive.openBox<ProfileModel>(profileBox);
    final Map<dynamic, ProfileModel> map = box.toMap();
    if (map.isNotEmpty) {
      for (final e in map.values) {
        if (e.name != null) {
          return true;
        }
      }
    }
    return false;
  }

  @override
  Future<bool> hasPhoto() async {
    final box = await Hive.openBox<ProfileModel>(profileBox);
    final Map<dynamic, ProfileModel> map = box.toMap();
    if (map.isNotEmpty) {
      for (final e in map.values) {
        if (e.filePath != null) {
          return true;
        }
      }
    }
    return false;
  }

  @override
  Future<Profile> getProfile() async {
    final box = await Hive.openBox<ProfileModel>(profileBox);
    final Map<dynamic, ProfileModel> map = box.toMap();
    late Profile profile;
    for (final e in map.values) {
      profile = e;
    }
    return profile;
  }
}
