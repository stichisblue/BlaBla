// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserModelAdapter extends TypeAdapter<UserModel> {
  @override
  final int typeId = 3;

  @override
  UserModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserModel(
      userTypes: fields[0] as UserTypes,
    );
  }

  @override
  void write(BinaryWriter writer, UserModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.userTypes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UserTypesAdapter extends TypeAdapter<UserTypes> {
  @override
  final int typeId = 2;

  @override
  UserTypes read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return UserTypes.misterMix;
      case 1:
        return UserTypes.renTv;
      case 2:
        return UserTypes.journalist;
      case 3:
        return UserTypes.granny;
      case 4:
        return UserTypes.gopnik;
      case 5:
        return UserTypes.marketolog;
      case 6:
        return UserTypes.shortStoryMan;
      case 7:
        return UserTypes.instaChika;
      case 8:
        return UserTypes.korocheWiki;
      case 9:
        return UserTypes.cinema;
      case 10:
        return UserTypes.horoscope;
      case 11:
        return UserTypes.svyatoslav;
      case 12:
        return UserTypes.me;
      default:
        return UserTypes.misterMix;
    }
  }

  @override
  void write(BinaryWriter writer, UserTypes obj) {
    switch (obj) {
      case UserTypes.misterMix:
        writer.writeByte(0);
        break;
      case UserTypes.renTv:
        writer.writeByte(1);
        break;
      case UserTypes.journalist:
        writer.writeByte(2);
        break;
      case UserTypes.granny:
        writer.writeByte(3);
        break;
      case UserTypes.gopnik:
        writer.writeByte(4);
        break;
      case UserTypes.marketolog:
        writer.writeByte(5);
        break;
      case UserTypes.shortStoryMan:
        writer.writeByte(6);
        break;
      case UserTypes.instaChika:
        writer.writeByte(7);
        break;
      case UserTypes.korocheWiki:
        writer.writeByte(8);
        break;
      case UserTypes.cinema:
        writer.writeByte(9);
        break;
      case UserTypes.horoscope:
        writer.writeByte(10);
        break;
      case UserTypes.svyatoslav:
        writer.writeByte(11);
        break;
      case UserTypes.me:
        writer.writeByte(12);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserTypesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
