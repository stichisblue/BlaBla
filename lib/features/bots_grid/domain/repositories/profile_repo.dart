import 'package:blabla/features/bots_grid/domain/entities/profile.dart';

abstract class ProfileRepo {
  Future<void> addPhoto({required final String filePath});
  Future<void> changeName({required final String name});
  Future<Profile> getProfile();
  Future<bool> hasPhoto();
  Future<bool> hasName();
}
