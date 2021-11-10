// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'botsgrid_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BotsgridEventTearOff {
  const _$BotsgridEventTearOff();

  BotsgridEventInitial initial() {
    return const BotsgridEventInitial();
  }

  BotsgridEventOnPenTap onPenTap() {
    return const BotsgridEventOnPenTap();
  }

  BotsgridEventOnPhotoChanged onPhotoChanged({required String filePath}) {
    return BotsgridEventOnPhotoChanged(
      filePath: filePath,
    );
  }

  BotsGridEventOnChangesSaved onChangesSaved({String? name, String? filePath}) {
    return BotsGridEventOnChangesSaved(
      name: name,
      filePath: filePath,
    );
  }
}

/// @nodoc
const $BotsgridEvent = _$BotsgridEventTearOff();

/// @nodoc
mixin _$BotsgridEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onPenTap,
    required TResult Function(String filePath) onPhotoChanged,
    required TResult Function(String? name, String? filePath) onChangesSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onPenTap,
    TResult Function(String filePath)? onPhotoChanged,
    TResult Function(String? name, String? filePath)? onChangesSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onPenTap,
    TResult Function(String filePath)? onPhotoChanged,
    TResult Function(String? name, String? filePath)? onChangesSaved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BotsgridEventInitial value) initial,
    required TResult Function(BotsgridEventOnPenTap value) onPenTap,
    required TResult Function(BotsgridEventOnPhotoChanged value) onPhotoChanged,
    required TResult Function(BotsGridEventOnChangesSaved value) onChangesSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BotsgridEventInitial value)? initial,
    TResult Function(BotsgridEventOnPenTap value)? onPenTap,
    TResult Function(BotsgridEventOnPhotoChanged value)? onPhotoChanged,
    TResult Function(BotsGridEventOnChangesSaved value)? onChangesSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BotsgridEventInitial value)? initial,
    TResult Function(BotsgridEventOnPenTap value)? onPenTap,
    TResult Function(BotsgridEventOnPhotoChanged value)? onPhotoChanged,
    TResult Function(BotsGridEventOnChangesSaved value)? onChangesSaved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BotsgridEventCopyWith<$Res> {
  factory $BotsgridEventCopyWith(
          BotsgridEvent value, $Res Function(BotsgridEvent) then) =
      _$BotsgridEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BotsgridEventCopyWithImpl<$Res>
    implements $BotsgridEventCopyWith<$Res> {
  _$BotsgridEventCopyWithImpl(this._value, this._then);

  final BotsgridEvent _value;
  // ignore: unused_field
  final $Res Function(BotsgridEvent) _then;
}

/// @nodoc
abstract class $BotsgridEventInitialCopyWith<$Res> {
  factory $BotsgridEventInitialCopyWith(BotsgridEventInitial value,
          $Res Function(BotsgridEventInitial) then) =
      _$BotsgridEventInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$BotsgridEventInitialCopyWithImpl<$Res>
    extends _$BotsgridEventCopyWithImpl<$Res>
    implements $BotsgridEventInitialCopyWith<$Res> {
  _$BotsgridEventInitialCopyWithImpl(
      BotsgridEventInitial _value, $Res Function(BotsgridEventInitial) _then)
      : super(_value, (v) => _then(v as BotsgridEventInitial));

  @override
  BotsgridEventInitial get _value => super._value as BotsgridEventInitial;
}

/// @nodoc

class _$BotsgridEventInitial implements BotsgridEventInitial {
  const _$BotsgridEventInitial();

  @override
  String toString() {
    return 'BotsgridEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BotsgridEventInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onPenTap,
    required TResult Function(String filePath) onPhotoChanged,
    required TResult Function(String? name, String? filePath) onChangesSaved,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onPenTap,
    TResult Function(String filePath)? onPhotoChanged,
    TResult Function(String? name, String? filePath)? onChangesSaved,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onPenTap,
    TResult Function(String filePath)? onPhotoChanged,
    TResult Function(String? name, String? filePath)? onChangesSaved,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BotsgridEventInitial value) initial,
    required TResult Function(BotsgridEventOnPenTap value) onPenTap,
    required TResult Function(BotsgridEventOnPhotoChanged value) onPhotoChanged,
    required TResult Function(BotsGridEventOnChangesSaved value) onChangesSaved,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BotsgridEventInitial value)? initial,
    TResult Function(BotsgridEventOnPenTap value)? onPenTap,
    TResult Function(BotsgridEventOnPhotoChanged value)? onPhotoChanged,
    TResult Function(BotsGridEventOnChangesSaved value)? onChangesSaved,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BotsgridEventInitial value)? initial,
    TResult Function(BotsgridEventOnPenTap value)? onPenTap,
    TResult Function(BotsgridEventOnPhotoChanged value)? onPhotoChanged,
    TResult Function(BotsGridEventOnChangesSaved value)? onChangesSaved,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class BotsgridEventInitial implements BotsgridEvent {
  const factory BotsgridEventInitial() = _$BotsgridEventInitial;
}

/// @nodoc
abstract class $BotsgridEventOnPenTapCopyWith<$Res> {
  factory $BotsgridEventOnPenTapCopyWith(BotsgridEventOnPenTap value,
          $Res Function(BotsgridEventOnPenTap) then) =
      _$BotsgridEventOnPenTapCopyWithImpl<$Res>;
}

/// @nodoc
class _$BotsgridEventOnPenTapCopyWithImpl<$Res>
    extends _$BotsgridEventCopyWithImpl<$Res>
    implements $BotsgridEventOnPenTapCopyWith<$Res> {
  _$BotsgridEventOnPenTapCopyWithImpl(
      BotsgridEventOnPenTap _value, $Res Function(BotsgridEventOnPenTap) _then)
      : super(_value, (v) => _then(v as BotsgridEventOnPenTap));

  @override
  BotsgridEventOnPenTap get _value => super._value as BotsgridEventOnPenTap;
}

/// @nodoc

class _$BotsgridEventOnPenTap implements BotsgridEventOnPenTap {
  const _$BotsgridEventOnPenTap();

  @override
  String toString() {
    return 'BotsgridEvent.onPenTap()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BotsgridEventOnPenTap);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onPenTap,
    required TResult Function(String filePath) onPhotoChanged,
    required TResult Function(String? name, String? filePath) onChangesSaved,
  }) {
    return onPenTap();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onPenTap,
    TResult Function(String filePath)? onPhotoChanged,
    TResult Function(String? name, String? filePath)? onChangesSaved,
  }) {
    return onPenTap?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onPenTap,
    TResult Function(String filePath)? onPhotoChanged,
    TResult Function(String? name, String? filePath)? onChangesSaved,
    required TResult orElse(),
  }) {
    if (onPenTap != null) {
      return onPenTap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BotsgridEventInitial value) initial,
    required TResult Function(BotsgridEventOnPenTap value) onPenTap,
    required TResult Function(BotsgridEventOnPhotoChanged value) onPhotoChanged,
    required TResult Function(BotsGridEventOnChangesSaved value) onChangesSaved,
  }) {
    return onPenTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BotsgridEventInitial value)? initial,
    TResult Function(BotsgridEventOnPenTap value)? onPenTap,
    TResult Function(BotsgridEventOnPhotoChanged value)? onPhotoChanged,
    TResult Function(BotsGridEventOnChangesSaved value)? onChangesSaved,
  }) {
    return onPenTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BotsgridEventInitial value)? initial,
    TResult Function(BotsgridEventOnPenTap value)? onPenTap,
    TResult Function(BotsgridEventOnPhotoChanged value)? onPhotoChanged,
    TResult Function(BotsGridEventOnChangesSaved value)? onChangesSaved,
    required TResult orElse(),
  }) {
    if (onPenTap != null) {
      return onPenTap(this);
    }
    return orElse();
  }
}

abstract class BotsgridEventOnPenTap implements BotsgridEvent {
  const factory BotsgridEventOnPenTap() = _$BotsgridEventOnPenTap;
}

/// @nodoc
abstract class $BotsgridEventOnPhotoChangedCopyWith<$Res> {
  factory $BotsgridEventOnPhotoChangedCopyWith(
          BotsgridEventOnPhotoChanged value,
          $Res Function(BotsgridEventOnPhotoChanged) then) =
      _$BotsgridEventOnPhotoChangedCopyWithImpl<$Res>;
  $Res call({String filePath});
}

/// @nodoc
class _$BotsgridEventOnPhotoChangedCopyWithImpl<$Res>
    extends _$BotsgridEventCopyWithImpl<$Res>
    implements $BotsgridEventOnPhotoChangedCopyWith<$Res> {
  _$BotsgridEventOnPhotoChangedCopyWithImpl(BotsgridEventOnPhotoChanged _value,
      $Res Function(BotsgridEventOnPhotoChanged) _then)
      : super(_value, (v) => _then(v as BotsgridEventOnPhotoChanged));

  @override
  BotsgridEventOnPhotoChanged get _value =>
      super._value as BotsgridEventOnPhotoChanged;

  @override
  $Res call({
    Object? filePath = freezed,
  }) {
    return _then(BotsgridEventOnPhotoChanged(
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BotsgridEventOnPhotoChanged implements BotsgridEventOnPhotoChanged {
  const _$BotsgridEventOnPhotoChanged({required this.filePath});

  @override
  final String filePath;

  @override
  String toString() {
    return 'BotsgridEvent.onPhotoChanged(filePath: $filePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BotsgridEventOnPhotoChanged &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filePath);

  @JsonKey(ignore: true)
  @override
  $BotsgridEventOnPhotoChangedCopyWith<BotsgridEventOnPhotoChanged>
      get copyWith => _$BotsgridEventOnPhotoChangedCopyWithImpl<
          BotsgridEventOnPhotoChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onPenTap,
    required TResult Function(String filePath) onPhotoChanged,
    required TResult Function(String? name, String? filePath) onChangesSaved,
  }) {
    return onPhotoChanged(filePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onPenTap,
    TResult Function(String filePath)? onPhotoChanged,
    TResult Function(String? name, String? filePath)? onChangesSaved,
  }) {
    return onPhotoChanged?.call(filePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onPenTap,
    TResult Function(String filePath)? onPhotoChanged,
    TResult Function(String? name, String? filePath)? onChangesSaved,
    required TResult orElse(),
  }) {
    if (onPhotoChanged != null) {
      return onPhotoChanged(filePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BotsgridEventInitial value) initial,
    required TResult Function(BotsgridEventOnPenTap value) onPenTap,
    required TResult Function(BotsgridEventOnPhotoChanged value) onPhotoChanged,
    required TResult Function(BotsGridEventOnChangesSaved value) onChangesSaved,
  }) {
    return onPhotoChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BotsgridEventInitial value)? initial,
    TResult Function(BotsgridEventOnPenTap value)? onPenTap,
    TResult Function(BotsgridEventOnPhotoChanged value)? onPhotoChanged,
    TResult Function(BotsGridEventOnChangesSaved value)? onChangesSaved,
  }) {
    return onPhotoChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BotsgridEventInitial value)? initial,
    TResult Function(BotsgridEventOnPenTap value)? onPenTap,
    TResult Function(BotsgridEventOnPhotoChanged value)? onPhotoChanged,
    TResult Function(BotsGridEventOnChangesSaved value)? onChangesSaved,
    required TResult orElse(),
  }) {
    if (onPhotoChanged != null) {
      return onPhotoChanged(this);
    }
    return orElse();
  }
}

abstract class BotsgridEventOnPhotoChanged implements BotsgridEvent {
  const factory BotsgridEventOnPhotoChanged({required String filePath}) =
      _$BotsgridEventOnPhotoChanged;

  String get filePath;
  @JsonKey(ignore: true)
  $BotsgridEventOnPhotoChangedCopyWith<BotsgridEventOnPhotoChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BotsGridEventOnChangesSavedCopyWith<$Res> {
  factory $BotsGridEventOnChangesSavedCopyWith(
          BotsGridEventOnChangesSaved value,
          $Res Function(BotsGridEventOnChangesSaved) then) =
      _$BotsGridEventOnChangesSavedCopyWithImpl<$Res>;
  $Res call({String? name, String? filePath});
}

/// @nodoc
class _$BotsGridEventOnChangesSavedCopyWithImpl<$Res>
    extends _$BotsgridEventCopyWithImpl<$Res>
    implements $BotsGridEventOnChangesSavedCopyWith<$Res> {
  _$BotsGridEventOnChangesSavedCopyWithImpl(BotsGridEventOnChangesSaved _value,
      $Res Function(BotsGridEventOnChangesSaved) _then)
      : super(_value, (v) => _then(v as BotsGridEventOnChangesSaved));

  @override
  BotsGridEventOnChangesSaved get _value =>
      super._value as BotsGridEventOnChangesSaved;

  @override
  $Res call({
    Object? name = freezed,
    Object? filePath = freezed,
  }) {
    return _then(BotsGridEventOnChangesSaved(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BotsGridEventOnChangesSaved implements BotsGridEventOnChangesSaved {
  const _$BotsGridEventOnChangesSaved({this.name, this.filePath});

  @override
  final String? name;
  @override
  final String? filePath;

  @override
  String toString() {
    return 'BotsgridEvent.onChangesSaved(name: $name, filePath: $filePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BotsGridEventOnChangesSaved &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, filePath);

  @JsonKey(ignore: true)
  @override
  $BotsGridEventOnChangesSavedCopyWith<BotsGridEventOnChangesSaved>
      get copyWith => _$BotsGridEventOnChangesSavedCopyWithImpl<
          BotsGridEventOnChangesSaved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onPenTap,
    required TResult Function(String filePath) onPhotoChanged,
    required TResult Function(String? name, String? filePath) onChangesSaved,
  }) {
    return onChangesSaved(name, filePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onPenTap,
    TResult Function(String filePath)? onPhotoChanged,
    TResult Function(String? name, String? filePath)? onChangesSaved,
  }) {
    return onChangesSaved?.call(name, filePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onPenTap,
    TResult Function(String filePath)? onPhotoChanged,
    TResult Function(String? name, String? filePath)? onChangesSaved,
    required TResult orElse(),
  }) {
    if (onChangesSaved != null) {
      return onChangesSaved(name, filePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BotsgridEventInitial value) initial,
    required TResult Function(BotsgridEventOnPenTap value) onPenTap,
    required TResult Function(BotsgridEventOnPhotoChanged value) onPhotoChanged,
    required TResult Function(BotsGridEventOnChangesSaved value) onChangesSaved,
  }) {
    return onChangesSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BotsgridEventInitial value)? initial,
    TResult Function(BotsgridEventOnPenTap value)? onPenTap,
    TResult Function(BotsgridEventOnPhotoChanged value)? onPhotoChanged,
    TResult Function(BotsGridEventOnChangesSaved value)? onChangesSaved,
  }) {
    return onChangesSaved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BotsgridEventInitial value)? initial,
    TResult Function(BotsgridEventOnPenTap value)? onPenTap,
    TResult Function(BotsgridEventOnPhotoChanged value)? onPhotoChanged,
    TResult Function(BotsGridEventOnChangesSaved value)? onChangesSaved,
    required TResult orElse(),
  }) {
    if (onChangesSaved != null) {
      return onChangesSaved(this);
    }
    return orElse();
  }
}

abstract class BotsGridEventOnChangesSaved implements BotsgridEvent {
  const factory BotsGridEventOnChangesSaved({String? name, String? filePath}) =
      _$BotsGridEventOnChangesSaved;

  String? get name;
  String? get filePath;
  @JsonKey(ignore: true)
  $BotsGridEventOnChangesSavedCopyWith<BotsGridEventOnChangesSaved>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$BotsgridStateTearOff {
  const _$BotsgridStateTearOff();

  _BotsgridState call(
      {required bool changeInfo,
      required bool hasPhoto,
      required bool hasName,
      required String name,
      required String filePath}) {
    return _BotsgridState(
      changeInfo: changeInfo,
      hasPhoto: hasPhoto,
      hasName: hasName,
      name: name,
      filePath: filePath,
    );
  }
}

/// @nodoc
const $BotsgridState = _$BotsgridStateTearOff();

/// @nodoc
mixin _$BotsgridState {
  bool get changeInfo => throw _privateConstructorUsedError;
  bool get hasPhoto => throw _privateConstructorUsedError;
  bool get hasName => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get filePath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BotsgridStateCopyWith<BotsgridState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BotsgridStateCopyWith<$Res> {
  factory $BotsgridStateCopyWith(
          BotsgridState value, $Res Function(BotsgridState) then) =
      _$BotsgridStateCopyWithImpl<$Res>;
  $Res call(
      {bool changeInfo,
      bool hasPhoto,
      bool hasName,
      String name,
      String filePath});
}

/// @nodoc
class _$BotsgridStateCopyWithImpl<$Res>
    implements $BotsgridStateCopyWith<$Res> {
  _$BotsgridStateCopyWithImpl(this._value, this._then);

  final BotsgridState _value;
  // ignore: unused_field
  final $Res Function(BotsgridState) _then;

  @override
  $Res call({
    Object? changeInfo = freezed,
    Object? hasPhoto = freezed,
    Object? hasName = freezed,
    Object? name = freezed,
    Object? filePath = freezed,
  }) {
    return _then(_value.copyWith(
      changeInfo: changeInfo == freezed
          ? _value.changeInfo
          : changeInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPhoto: hasPhoto == freezed
          ? _value.hasPhoto
          : hasPhoto // ignore: cast_nullable_to_non_nullable
              as bool,
      hasName: hasName == freezed
          ? _value.hasName
          : hasName // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BotsgridStateCopyWith<$Res>
    implements $BotsgridStateCopyWith<$Res> {
  factory _$BotsgridStateCopyWith(
          _BotsgridState value, $Res Function(_BotsgridState) then) =
      __$BotsgridStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool changeInfo,
      bool hasPhoto,
      bool hasName,
      String name,
      String filePath});
}

/// @nodoc
class __$BotsgridStateCopyWithImpl<$Res>
    extends _$BotsgridStateCopyWithImpl<$Res>
    implements _$BotsgridStateCopyWith<$Res> {
  __$BotsgridStateCopyWithImpl(
      _BotsgridState _value, $Res Function(_BotsgridState) _then)
      : super(_value, (v) => _then(v as _BotsgridState));

  @override
  _BotsgridState get _value => super._value as _BotsgridState;

  @override
  $Res call({
    Object? changeInfo = freezed,
    Object? hasPhoto = freezed,
    Object? hasName = freezed,
    Object? name = freezed,
    Object? filePath = freezed,
  }) {
    return _then(_BotsgridState(
      changeInfo: changeInfo == freezed
          ? _value.changeInfo
          : changeInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPhoto: hasPhoto == freezed
          ? _value.hasPhoto
          : hasPhoto // ignore: cast_nullable_to_non_nullable
              as bool,
      hasName: hasName == freezed
          ? _value.hasName
          : hasName // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BotsgridState implements _BotsgridState {
  const _$_BotsgridState(
      {required this.changeInfo,
      required this.hasPhoto,
      required this.hasName,
      required this.name,
      required this.filePath});

  @override
  final bool changeInfo;
  @override
  final bool hasPhoto;
  @override
  final bool hasName;
  @override
  final String name;
  @override
  final String filePath;

  @override
  String toString() {
    return 'BotsgridState(changeInfo: $changeInfo, hasPhoto: $hasPhoto, hasName: $hasName, name: $name, filePath: $filePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BotsgridState &&
            (identical(other.changeInfo, changeInfo) ||
                other.changeInfo == changeInfo) &&
            (identical(other.hasPhoto, hasPhoto) ||
                other.hasPhoto == hasPhoto) &&
            (identical(other.hasName, hasName) || other.hasName == hasName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, changeInfo, hasPhoto, hasName, name, filePath);

  @JsonKey(ignore: true)
  @override
  _$BotsgridStateCopyWith<_BotsgridState> get copyWith =>
      __$BotsgridStateCopyWithImpl<_BotsgridState>(this, _$identity);
}

abstract class _BotsgridState implements BotsgridState {
  const factory _BotsgridState(
      {required bool changeInfo,
      required bool hasPhoto,
      required bool hasName,
      required String name,
      required String filePath}) = _$_BotsgridState;

  @override
  bool get changeInfo;
  @override
  bool get hasPhoto;
  @override
  bool get hasName;
  @override
  String get name;
  @override
  String get filePath;
  @override
  @JsonKey(ignore: true)
  _$BotsgridStateCopyWith<_BotsgridState> get copyWith =>
      throw _privateConstructorUsedError;
}
