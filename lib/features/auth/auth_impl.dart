import 'package:blabla/features/auth/auth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

const String loginKey = "loginKey";
const String loginValue = "loginValue";

@LazySingleton(as: Auth)
class AuthImpl extends Auth {
  final FlutterSecureStorage secureStorage;
  AuthImpl({
    required this.secureStorage,
  });
  @override
  Future<void> logIn() async {
    await secureStorage.write(key: loginKey, value: loginValue);
  }

  @override
  Future<bool> loggedIn() async {
    final res = await secureStorage.read(key: loginKey);
    return res != null;
  }
}
