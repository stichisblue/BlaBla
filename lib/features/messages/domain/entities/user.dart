import 'package:blabla/features/messages/data/models/user.dart';
import 'package:flutter/material.dart';

class User {
  final UserTypes userTypes;
  User({
    required this.userTypes,
  });

  @override
  String toString() => 'User(userTypes: $userTypes)';
}

class Bot extends User {
  final String assetPath;
  final String name;
  final Color color;
  final String botInfo;
  Bot({
    required final UserTypes userTypes,
    required this.assetPath,
    required this.name,
    required this.color,
    required this.botInfo,
  }) : super(
            userTypes: userTypes,
          );

  @override
  String toString() => 'Bot(assetPath: $assetPath, name: $name, color: $color)';
}
