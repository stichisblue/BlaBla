// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dialog_unit_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DialogUintModelAdapter extends TypeAdapter<DialogUintModel> {
  @override
  final int typeId = 5;

  @override
  DialogUintModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DialogUintModel(
      askerModel: fields[0] as UserModel,
      replierModel: fields[1] as UserModel,
      time: fields[2] as String,
      question: fields[3] as String,
      answer: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, DialogUintModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.askerModel)
      ..writeByte(1)
      ..write(obj.replierModel)
      ..writeByte(2)
      ..write(obj.time)
      ..writeByte(3)
      ..write(obj.question)
      ..writeByte(4)
      ..write(obj.answer);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DialogUintModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
