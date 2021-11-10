// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_message_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LastMessageModelAdapter extends TypeAdapter<LastMessageModel> {
  @override
  final int typeId = 6;

  @override
  LastMessageModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LastMessageModel(
      text: fields[0] as String,
      time: fields[1] as String,
      userType: fields[2] as UserTypes,
    );
  }

  @override
  void write(BinaryWriter writer, LastMessageModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.text)
      ..writeByte(1)
      ..write(obj.time)
      ..writeByte(2)
      ..write(obj.userType);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LastMessageModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
