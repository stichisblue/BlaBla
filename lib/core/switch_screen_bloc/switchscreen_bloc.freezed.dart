// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'switchscreen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SwitchscreenEventTearOff {
  const _$SwitchscreenEventTearOff();

  _Started started() {
    return const _Started();
  }
}

/// @nodoc
const $SwitchscreenEvent = _$SwitchscreenEventTearOff();

/// @nodoc
mixin _$SwitchscreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwitchscreenEventCopyWith<$Res> {
  factory $SwitchscreenEventCopyWith(
          SwitchscreenEvent value, $Res Function(SwitchscreenEvent) then) =
      _$SwitchscreenEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SwitchscreenEventCopyWithImpl<$Res>
    implements $SwitchscreenEventCopyWith<$Res> {
  _$SwitchscreenEventCopyWithImpl(this._value, this._then);

  final SwitchscreenEvent _value;
  // ignore: unused_field
  final $Res Function(SwitchscreenEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$SwitchscreenEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'SwitchscreenEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SwitchscreenEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$SwitchscreenStateTearOff {
  const _$SwitchscreenStateTearOff();

  _SwitchscreenState call(
      {required bool isSubmitting, required Screens screen}) {
    return _SwitchscreenState(
      isSubmitting: isSubmitting,
      screen: screen,
    );
  }
}

/// @nodoc
const $SwitchscreenState = _$SwitchscreenStateTearOff();

/// @nodoc
mixin _$SwitchscreenState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  Screens get screen => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SwitchscreenStateCopyWith<SwitchscreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwitchscreenStateCopyWith<$Res> {
  factory $SwitchscreenStateCopyWith(
          SwitchscreenState value, $Res Function(SwitchscreenState) then) =
      _$SwitchscreenStateCopyWithImpl<$Res>;
  $Res call({bool isSubmitting, Screens screen});
}

/// @nodoc
class _$SwitchscreenStateCopyWithImpl<$Res>
    implements $SwitchscreenStateCopyWith<$Res> {
  _$SwitchscreenStateCopyWithImpl(this._value, this._then);

  final SwitchscreenState _value;
  // ignore: unused_field
  final $Res Function(SwitchscreenState) _then;

  @override
  $Res call({
    Object? isSubmitting = freezed,
    Object? screen = freezed,
  }) {
    return _then(_value.copyWith(
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      screen: screen == freezed
          ? _value.screen
          : screen // ignore: cast_nullable_to_non_nullable
              as Screens,
    ));
  }
}

/// @nodoc
abstract class _$SwitchscreenStateCopyWith<$Res>
    implements $SwitchscreenStateCopyWith<$Res> {
  factory _$SwitchscreenStateCopyWith(
          _SwitchscreenState value, $Res Function(_SwitchscreenState) then) =
      __$SwitchscreenStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isSubmitting, Screens screen});
}

/// @nodoc
class __$SwitchscreenStateCopyWithImpl<$Res>
    extends _$SwitchscreenStateCopyWithImpl<$Res>
    implements _$SwitchscreenStateCopyWith<$Res> {
  __$SwitchscreenStateCopyWithImpl(
      _SwitchscreenState _value, $Res Function(_SwitchscreenState) _then)
      : super(_value, (v) => _then(v as _SwitchscreenState));

  @override
  _SwitchscreenState get _value => super._value as _SwitchscreenState;

  @override
  $Res call({
    Object? isSubmitting = freezed,
    Object? screen = freezed,
  }) {
    return _then(_SwitchscreenState(
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      screen: screen == freezed
          ? _value.screen
          : screen // ignore: cast_nullable_to_non_nullable
              as Screens,
    ));
  }
}

/// @nodoc

class _$_SwitchscreenState implements _SwitchscreenState {
  const _$_SwitchscreenState(
      {required this.isSubmitting, required this.screen});

  @override
  final bool isSubmitting;
  @override
  final Screens screen;

  @override
  String toString() {
    return 'SwitchscreenState(isSubmitting: $isSubmitting, screen: $screen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SwitchscreenState &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.screen, screen) || other.screen == screen));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSubmitting, screen);

  @JsonKey(ignore: true)
  @override
  _$SwitchscreenStateCopyWith<_SwitchscreenState> get copyWith =>
      __$SwitchscreenStateCopyWithImpl<_SwitchscreenState>(this, _$identity);
}

abstract class _SwitchscreenState implements SwitchscreenState {
  const factory _SwitchscreenState(
      {required bool isSubmitting,
      required Screens screen}) = _$_SwitchscreenState;

  @override
  bool get isSubmitting;
  @override
  Screens get screen;
  @override
  @JsonKey(ignore: true)
  _$SwitchscreenStateCopyWith<_SwitchscreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
