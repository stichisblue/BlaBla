// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'messages_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MessagesEventTearOff {
  const _$MessagesEventTearOff();

  MessageEventInitial initial({required UserTypes userType}) {
    return MessageEventInitial(
      userType: userType,
    );
  }

  MessagesEventOnNewMessage onNewMessage({required String text}) {
    return MessagesEventOnNewMessage(
      text: text,
    );
  }

  MessagesEventOnExit onExit() {
    return const MessagesEventOnExit();
  }
}

/// @nodoc
const $MessagesEvent = _$MessagesEventTearOff();

/// @nodoc
mixin _$MessagesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserTypes userType) initial,
    required TResult Function(String text) onNewMessage,
    required TResult Function() onExit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserTypes userType)? initial,
    TResult Function(String text)? onNewMessage,
    TResult Function()? onExit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserTypes userType)? initial,
    TResult Function(String text)? onNewMessage,
    TResult Function()? onExit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageEventInitial value) initial,
    required TResult Function(MessagesEventOnNewMessage value) onNewMessage,
    required TResult Function(MessagesEventOnExit value) onExit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessageEventInitial value)? initial,
    TResult Function(MessagesEventOnNewMessage value)? onNewMessage,
    TResult Function(MessagesEventOnExit value)? onExit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageEventInitial value)? initial,
    TResult Function(MessagesEventOnNewMessage value)? onNewMessage,
    TResult Function(MessagesEventOnExit value)? onExit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagesEventCopyWith<$Res> {
  factory $MessagesEventCopyWith(
          MessagesEvent value, $Res Function(MessagesEvent) then) =
      _$MessagesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessagesEventCopyWithImpl<$Res>
    implements $MessagesEventCopyWith<$Res> {
  _$MessagesEventCopyWithImpl(this._value, this._then);

  final MessagesEvent _value;
  // ignore: unused_field
  final $Res Function(MessagesEvent) _then;
}

/// @nodoc
abstract class $MessageEventInitialCopyWith<$Res> {
  factory $MessageEventInitialCopyWith(
          MessageEventInitial value, $Res Function(MessageEventInitial) then) =
      _$MessageEventInitialCopyWithImpl<$Res>;
  $Res call({UserTypes userType});
}

/// @nodoc
class _$MessageEventInitialCopyWithImpl<$Res>
    extends _$MessagesEventCopyWithImpl<$Res>
    implements $MessageEventInitialCopyWith<$Res> {
  _$MessageEventInitialCopyWithImpl(
      MessageEventInitial _value, $Res Function(MessageEventInitial) _then)
      : super(_value, (v) => _then(v as MessageEventInitial));

  @override
  MessageEventInitial get _value => super._value as MessageEventInitial;

  @override
  $Res call({
    Object? userType = freezed,
  }) {
    return _then(MessageEventInitial(
      userType: userType == freezed
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserTypes,
    ));
  }
}

/// @nodoc

class _$MessageEventInitial implements MessageEventInitial {
  const _$MessageEventInitial({required this.userType});

  @override
  final UserTypes userType;

  @override
  String toString() {
    return 'MessagesEvent.initial(userType: $userType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MessageEventInitial &&
            (identical(other.userType, userType) ||
                other.userType == userType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userType);

  @JsonKey(ignore: true)
  @override
  $MessageEventInitialCopyWith<MessageEventInitial> get copyWith =>
      _$MessageEventInitialCopyWithImpl<MessageEventInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserTypes userType) initial,
    required TResult Function(String text) onNewMessage,
    required TResult Function() onExit,
  }) {
    return initial(userType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserTypes userType)? initial,
    TResult Function(String text)? onNewMessage,
    TResult Function()? onExit,
  }) {
    return initial?.call(userType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserTypes userType)? initial,
    TResult Function(String text)? onNewMessage,
    TResult Function()? onExit,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(userType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageEventInitial value) initial,
    required TResult Function(MessagesEventOnNewMessage value) onNewMessage,
    required TResult Function(MessagesEventOnExit value) onExit,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessageEventInitial value)? initial,
    TResult Function(MessagesEventOnNewMessage value)? onNewMessage,
    TResult Function(MessagesEventOnExit value)? onExit,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageEventInitial value)? initial,
    TResult Function(MessagesEventOnNewMessage value)? onNewMessage,
    TResult Function(MessagesEventOnExit value)? onExit,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MessageEventInitial implements MessagesEvent {
  const factory MessageEventInitial({required UserTypes userType}) =
      _$MessageEventInitial;

  UserTypes get userType;
  @JsonKey(ignore: true)
  $MessageEventInitialCopyWith<MessageEventInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagesEventOnNewMessageCopyWith<$Res> {
  factory $MessagesEventOnNewMessageCopyWith(MessagesEventOnNewMessage value,
          $Res Function(MessagesEventOnNewMessage) then) =
      _$MessagesEventOnNewMessageCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class _$MessagesEventOnNewMessageCopyWithImpl<$Res>
    extends _$MessagesEventCopyWithImpl<$Res>
    implements $MessagesEventOnNewMessageCopyWith<$Res> {
  _$MessagesEventOnNewMessageCopyWithImpl(MessagesEventOnNewMessage _value,
      $Res Function(MessagesEventOnNewMessage) _then)
      : super(_value, (v) => _then(v as MessagesEventOnNewMessage));

  @override
  MessagesEventOnNewMessage get _value =>
      super._value as MessagesEventOnNewMessage;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(MessagesEventOnNewMessage(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MessagesEventOnNewMessage implements MessagesEventOnNewMessage {
  const _$MessagesEventOnNewMessage({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'MessagesEvent.onNewMessage(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MessagesEventOnNewMessage &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  $MessagesEventOnNewMessageCopyWith<MessagesEventOnNewMessage> get copyWith =>
      _$MessagesEventOnNewMessageCopyWithImpl<MessagesEventOnNewMessage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserTypes userType) initial,
    required TResult Function(String text) onNewMessage,
    required TResult Function() onExit,
  }) {
    return onNewMessage(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserTypes userType)? initial,
    TResult Function(String text)? onNewMessage,
    TResult Function()? onExit,
  }) {
    return onNewMessage?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserTypes userType)? initial,
    TResult Function(String text)? onNewMessage,
    TResult Function()? onExit,
    required TResult orElse(),
  }) {
    if (onNewMessage != null) {
      return onNewMessage(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageEventInitial value) initial,
    required TResult Function(MessagesEventOnNewMessage value) onNewMessage,
    required TResult Function(MessagesEventOnExit value) onExit,
  }) {
    return onNewMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessageEventInitial value)? initial,
    TResult Function(MessagesEventOnNewMessage value)? onNewMessage,
    TResult Function(MessagesEventOnExit value)? onExit,
  }) {
    return onNewMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageEventInitial value)? initial,
    TResult Function(MessagesEventOnNewMessage value)? onNewMessage,
    TResult Function(MessagesEventOnExit value)? onExit,
    required TResult orElse(),
  }) {
    if (onNewMessage != null) {
      return onNewMessage(this);
    }
    return orElse();
  }
}

abstract class MessagesEventOnNewMessage implements MessagesEvent {
  const factory MessagesEventOnNewMessage({required String text}) =
      _$MessagesEventOnNewMessage;

  String get text;
  @JsonKey(ignore: true)
  $MessagesEventOnNewMessageCopyWith<MessagesEventOnNewMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagesEventOnExitCopyWith<$Res> {
  factory $MessagesEventOnExitCopyWith(
          MessagesEventOnExit value, $Res Function(MessagesEventOnExit) then) =
      _$MessagesEventOnExitCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessagesEventOnExitCopyWithImpl<$Res>
    extends _$MessagesEventCopyWithImpl<$Res>
    implements $MessagesEventOnExitCopyWith<$Res> {
  _$MessagesEventOnExitCopyWithImpl(
      MessagesEventOnExit _value, $Res Function(MessagesEventOnExit) _then)
      : super(_value, (v) => _then(v as MessagesEventOnExit));

  @override
  MessagesEventOnExit get _value => super._value as MessagesEventOnExit;
}

/// @nodoc

class _$MessagesEventOnExit implements MessagesEventOnExit {
  const _$MessagesEventOnExit();

  @override
  String toString() {
    return 'MessagesEvent.onExit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MessagesEventOnExit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserTypes userType) initial,
    required TResult Function(String text) onNewMessage,
    required TResult Function() onExit,
  }) {
    return onExit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserTypes userType)? initial,
    TResult Function(String text)? onNewMessage,
    TResult Function()? onExit,
  }) {
    return onExit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserTypes userType)? initial,
    TResult Function(String text)? onNewMessage,
    TResult Function()? onExit,
    required TResult orElse(),
  }) {
    if (onExit != null) {
      return onExit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageEventInitial value) initial,
    required TResult Function(MessagesEventOnNewMessage value) onNewMessage,
    required TResult Function(MessagesEventOnExit value) onExit,
  }) {
    return onExit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessageEventInitial value)? initial,
    TResult Function(MessagesEventOnNewMessage value)? onNewMessage,
    TResult Function(MessagesEventOnExit value)? onExit,
  }) {
    return onExit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageEventInitial value)? initial,
    TResult Function(MessagesEventOnNewMessage value)? onNewMessage,
    TResult Function(MessagesEventOnExit value)? onExit,
    required TResult orElse(),
  }) {
    if (onExit != null) {
      return onExit(this);
    }
    return orElse();
  }
}

abstract class MessagesEventOnExit implements MessagesEvent {
  const factory MessagesEventOnExit() = _$MessagesEventOnExit;
}

/// @nodoc
class _$MessagesStateTearOff {
  const _$MessagesStateTearOff();

  _MessagesState call(
      {required List<MessageUi> messages,
      required bool isSubmitting,
      required bool isBotWriting}) {
    return _MessagesState(
      messages: messages,
      isSubmitting: isSubmitting,
      isBotWriting: isBotWriting,
    );
  }
}

/// @nodoc
const $MessagesState = _$MessagesStateTearOff();

/// @nodoc
mixin _$MessagesState {
  List<MessageUi> get messages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isBotWriting => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessagesStateCopyWith<MessagesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagesStateCopyWith<$Res> {
  factory $MessagesStateCopyWith(
          MessagesState value, $Res Function(MessagesState) then) =
      _$MessagesStateCopyWithImpl<$Res>;
  $Res call({List<MessageUi> messages, bool isSubmitting, bool isBotWriting});
}

/// @nodoc
class _$MessagesStateCopyWithImpl<$Res>
    implements $MessagesStateCopyWith<$Res> {
  _$MessagesStateCopyWithImpl(this._value, this._then);

  final MessagesState _value;
  // ignore: unused_field
  final $Res Function(MessagesState) _then;

  @override
  $Res call({
    Object? messages = freezed,
    Object? isSubmitting = freezed,
    Object? isBotWriting = freezed,
  }) {
    return _then(_value.copyWith(
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageUi>,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isBotWriting: isBotWriting == freezed
          ? _value.isBotWriting
          : isBotWriting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$MessagesStateCopyWith<$Res>
    implements $MessagesStateCopyWith<$Res> {
  factory _$MessagesStateCopyWith(
          _MessagesState value, $Res Function(_MessagesState) then) =
      __$MessagesStateCopyWithImpl<$Res>;
  @override
  $Res call({List<MessageUi> messages, bool isSubmitting, bool isBotWriting});
}

/// @nodoc
class __$MessagesStateCopyWithImpl<$Res>
    extends _$MessagesStateCopyWithImpl<$Res>
    implements _$MessagesStateCopyWith<$Res> {
  __$MessagesStateCopyWithImpl(
      _MessagesState _value, $Res Function(_MessagesState) _then)
      : super(_value, (v) => _then(v as _MessagesState));

  @override
  _MessagesState get _value => super._value as _MessagesState;

  @override
  $Res call({
    Object? messages = freezed,
    Object? isSubmitting = freezed,
    Object? isBotWriting = freezed,
  }) {
    return _then(_MessagesState(
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageUi>,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isBotWriting: isBotWriting == freezed
          ? _value.isBotWriting
          : isBotWriting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MessagesState implements _MessagesState {
  const _$_MessagesState(
      {required this.messages,
      required this.isSubmitting,
      required this.isBotWriting});

  @override
  final List<MessageUi> messages;
  @override
  final bool isSubmitting;
  @override
  final bool isBotWriting;

  @override
  String toString() {
    return 'MessagesState(messages: $messages, isSubmitting: $isSubmitting, isBotWriting: $isBotWriting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MessagesState &&
            const DeepCollectionEquality().equals(other.messages, messages) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isBotWriting, isBotWriting) ||
                other.isBotWriting == isBotWriting));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(messages),
      isSubmitting,
      isBotWriting);

  @JsonKey(ignore: true)
  @override
  _$MessagesStateCopyWith<_MessagesState> get copyWith =>
      __$MessagesStateCopyWithImpl<_MessagesState>(this, _$identity);
}

abstract class _MessagesState implements MessagesState {
  const factory _MessagesState(
      {required List<MessageUi> messages,
      required bool isSubmitting,
      required bool isBotWriting}) = _$_MessagesState;

  @override
  List<MessageUi> get messages;
  @override
  bool get isSubmitting;
  @override
  bool get isBotWriting;
  @override
  @JsonKey(ignore: true)
  _$MessagesStateCopyWith<_MessagesState> get copyWith =>
      throw _privateConstructorUsedError;
}
