import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@module
abstract class InjectableModules {
  @lazySingleton
  Dio get dio => Dio();
  @lazySingleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();
}
