// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'messagehistory_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MessagehistoryEventTearOff {
  const _$MessagehistoryEventTearOff();

  MessagehistoryEventInitial intial() {
    return const MessagehistoryEventInitial();
  }

  MessagehistoryEventOnRemove onRemove({required LastMessage lastMessage}) {
    return MessagehistoryEventOnRemove(
      lastMessage: lastMessage,
    );
  }

  MessagehistoryEventRefresh refresh() {
    return const MessagehistoryEventRefresh();
  }
}

/// @nodoc
const $MessagehistoryEvent = _$MessagehistoryEventTearOff();

/// @nodoc
mixin _$MessagehistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intial,
    required TResult Function(LastMessage lastMessage) onRemove,
    required TResult Function() refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function(LastMessage lastMessage)? onRemove,
    TResult Function()? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function(LastMessage lastMessage)? onRemove,
    TResult Function()? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessagehistoryEventInitial value) intial,
    required TResult Function(MessagehistoryEventOnRemove value) onRemove,
    required TResult Function(MessagehistoryEventRefresh value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessagehistoryEventInitial value)? intial,
    TResult Function(MessagehistoryEventOnRemove value)? onRemove,
    TResult Function(MessagehistoryEventRefresh value)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessagehistoryEventInitial value)? intial,
    TResult Function(MessagehistoryEventOnRemove value)? onRemove,
    TResult Function(MessagehistoryEventRefresh value)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagehistoryEventCopyWith<$Res> {
  factory $MessagehistoryEventCopyWith(
          MessagehistoryEvent value, $Res Function(MessagehistoryEvent) then) =
      _$MessagehistoryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessagehistoryEventCopyWithImpl<$Res>
    implements $MessagehistoryEventCopyWith<$Res> {
  _$MessagehistoryEventCopyWithImpl(this._value, this._then);

  final MessagehistoryEvent _value;
  // ignore: unused_field
  final $Res Function(MessagehistoryEvent) _then;
}

/// @nodoc
abstract class $MessagehistoryEventInitialCopyWith<$Res> {
  factory $MessagehistoryEventInitialCopyWith(MessagehistoryEventInitial value,
          $Res Function(MessagehistoryEventInitial) then) =
      _$MessagehistoryEventInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessagehistoryEventInitialCopyWithImpl<$Res>
    extends _$MessagehistoryEventCopyWithImpl<$Res>
    implements $MessagehistoryEventInitialCopyWith<$Res> {
  _$MessagehistoryEventInitialCopyWithImpl(MessagehistoryEventInitial _value,
      $Res Function(MessagehistoryEventInitial) _then)
      : super(_value, (v) => _then(v as MessagehistoryEventInitial));

  @override
  MessagehistoryEventInitial get _value =>
      super._value as MessagehistoryEventInitial;
}

/// @nodoc

class _$MessagehistoryEventInitial implements MessagehistoryEventInitial {
  const _$MessagehistoryEventInitial();

  @override
  String toString() {
    return 'MessagehistoryEvent.intial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MessagehistoryEventInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intial,
    required TResult Function(LastMessage lastMessage) onRemove,
    required TResult Function() refresh,
  }) {
    return intial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function(LastMessage lastMessage)? onRemove,
    TResult Function()? refresh,
  }) {
    return intial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function(LastMessage lastMessage)? onRemove,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (intial != null) {
      return intial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessagehistoryEventInitial value) intial,
    required TResult Function(MessagehistoryEventOnRemove value) onRemove,
    required TResult Function(MessagehistoryEventRefresh value) refresh,
  }) {
    return intial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessagehistoryEventInitial value)? intial,
    TResult Function(MessagehistoryEventOnRemove value)? onRemove,
    TResult Function(MessagehistoryEventRefresh value)? refresh,
  }) {
    return intial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessagehistoryEventInitial value)? intial,
    TResult Function(MessagehistoryEventOnRemove value)? onRemove,
    TResult Function(MessagehistoryEventRefresh value)? refresh,
    required TResult orElse(),
  }) {
    if (intial != null) {
      return intial(this);
    }
    return orElse();
  }
}

abstract class MessagehistoryEventInitial implements MessagehistoryEvent {
  const factory MessagehistoryEventInitial() = _$MessagehistoryEventInitial;
}

/// @nodoc
abstract class $MessagehistoryEventOnRemoveCopyWith<$Res> {
  factory $MessagehistoryEventOnRemoveCopyWith(
          MessagehistoryEventOnRemove value,
          $Res Function(MessagehistoryEventOnRemove) then) =
      _$MessagehistoryEventOnRemoveCopyWithImpl<$Res>;
  $Res call({LastMessage lastMessage});
}

/// @nodoc
class _$MessagehistoryEventOnRemoveCopyWithImpl<$Res>
    extends _$MessagehistoryEventCopyWithImpl<$Res>
    implements $MessagehistoryEventOnRemoveCopyWith<$Res> {
  _$MessagehistoryEventOnRemoveCopyWithImpl(MessagehistoryEventOnRemove _value,
      $Res Function(MessagehistoryEventOnRemove) _then)
      : super(_value, (v) => _then(v as MessagehistoryEventOnRemove));

  @override
  MessagehistoryEventOnRemove get _value =>
      super._value as MessagehistoryEventOnRemove;

  @override
  $Res call({
    Object? lastMessage = freezed,
  }) {
    return _then(MessagehistoryEventOnRemove(
      lastMessage: lastMessage == freezed
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as LastMessage,
    ));
  }
}

/// @nodoc

class _$MessagehistoryEventOnRemove implements MessagehistoryEventOnRemove {
  const _$MessagehistoryEventOnRemove({required this.lastMessage});

  @override
  final LastMessage lastMessage;

  @override
  String toString() {
    return 'MessagehistoryEvent.onRemove(lastMessage: $lastMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MessagehistoryEventOnRemove &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastMessage);

  @JsonKey(ignore: true)
  @override
  $MessagehistoryEventOnRemoveCopyWith<MessagehistoryEventOnRemove>
      get copyWith => _$MessagehistoryEventOnRemoveCopyWithImpl<
          MessagehistoryEventOnRemove>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intial,
    required TResult Function(LastMessage lastMessage) onRemove,
    required TResult Function() refresh,
  }) {
    return onRemove(lastMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function(LastMessage lastMessage)? onRemove,
    TResult Function()? refresh,
  }) {
    return onRemove?.call(lastMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function(LastMessage lastMessage)? onRemove,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (onRemove != null) {
      return onRemove(lastMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessagehistoryEventInitial value) intial,
    required TResult Function(MessagehistoryEventOnRemove value) onRemove,
    required TResult Function(MessagehistoryEventRefresh value) refresh,
  }) {
    return onRemove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessagehistoryEventInitial value)? intial,
    TResult Function(MessagehistoryEventOnRemove value)? onRemove,
    TResult Function(MessagehistoryEventRefresh value)? refresh,
  }) {
    return onRemove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessagehistoryEventInitial value)? intial,
    TResult Function(MessagehistoryEventOnRemove value)? onRemove,
    TResult Function(MessagehistoryEventRefresh value)? refresh,
    required TResult orElse(),
  }) {
    if (onRemove != null) {
      return onRemove(this);
    }
    return orElse();
  }
}

abstract class MessagehistoryEventOnRemove implements MessagehistoryEvent {
  const factory MessagehistoryEventOnRemove(
      {required LastMessage lastMessage}) = _$MessagehistoryEventOnRemove;

  LastMessage get lastMessage;
  @JsonKey(ignore: true)
  $MessagehistoryEventOnRemoveCopyWith<MessagehistoryEventOnRemove>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagehistoryEventRefreshCopyWith<$Res> {
  factory $MessagehistoryEventRefreshCopyWith(MessagehistoryEventRefresh value,
          $Res Function(MessagehistoryEventRefresh) then) =
      _$MessagehistoryEventRefreshCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessagehistoryEventRefreshCopyWithImpl<$Res>
    extends _$MessagehistoryEventCopyWithImpl<$Res>
    implements $MessagehistoryEventRefreshCopyWith<$Res> {
  _$MessagehistoryEventRefreshCopyWithImpl(MessagehistoryEventRefresh _value,
      $Res Function(MessagehistoryEventRefresh) _then)
      : super(_value, (v) => _then(v as MessagehistoryEventRefresh));

  @override
  MessagehistoryEventRefresh get _value =>
      super._value as MessagehistoryEventRefresh;
}

/// @nodoc

class _$MessagehistoryEventRefresh implements MessagehistoryEventRefresh {
  const _$MessagehistoryEventRefresh();

  @override
  String toString() {
    return 'MessagehistoryEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MessagehistoryEventRefresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intial,
    required TResult Function(LastMessage lastMessage) onRemove,
    required TResult Function() refresh,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function(LastMessage lastMessage)? onRemove,
    TResult Function()? refresh,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function(LastMessage lastMessage)? onRemove,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessagehistoryEventInitial value) intial,
    required TResult Function(MessagehistoryEventOnRemove value) onRemove,
    required TResult Function(MessagehistoryEventRefresh value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessagehistoryEventInitial value)? intial,
    TResult Function(MessagehistoryEventOnRemove value)? onRemove,
    TResult Function(MessagehistoryEventRefresh value)? refresh,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessagehistoryEventInitial value)? intial,
    TResult Function(MessagehistoryEventOnRemove value)? onRemove,
    TResult Function(MessagehistoryEventRefresh value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class MessagehistoryEventRefresh implements MessagehistoryEvent {
  const factory MessagehistoryEventRefresh() = _$MessagehistoryEventRefresh;
}

/// @nodoc
class _$MessagehistoryStateTearOff {
  const _$MessagehistoryStateTearOff();

  _MessagehistoryState call(
      {required List<LastMessage> lastMessages, required bool isSubmitting}) {
    return _MessagehistoryState(
      lastMessages: lastMessages,
      isSubmitting: isSubmitting,
    );
  }
}

/// @nodoc
const $MessagehistoryState = _$MessagehistoryStateTearOff();

/// @nodoc
mixin _$MessagehistoryState {
  List<LastMessage> get lastMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessagehistoryStateCopyWith<MessagehistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagehistoryStateCopyWith<$Res> {
  factory $MessagehistoryStateCopyWith(
          MessagehistoryState value, $Res Function(MessagehistoryState) then) =
      _$MessagehistoryStateCopyWithImpl<$Res>;
  $Res call({List<LastMessage> lastMessages, bool isSubmitting});
}

/// @nodoc
class _$MessagehistoryStateCopyWithImpl<$Res>
    implements $MessagehistoryStateCopyWith<$Res> {
  _$MessagehistoryStateCopyWithImpl(this._value, this._then);

  final MessagehistoryState _value;
  // ignore: unused_field
  final $Res Function(MessagehistoryState) _then;

  @override
  $Res call({
    Object? lastMessages = freezed,
    Object? isSubmitting = freezed,
  }) {
    return _then(_value.copyWith(
      lastMessages: lastMessages == freezed
          ? _value.lastMessages
          : lastMessages // ignore: cast_nullable_to_non_nullable
              as List<LastMessage>,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$MessagehistoryStateCopyWith<$Res>
    implements $MessagehistoryStateCopyWith<$Res> {
  factory _$MessagehistoryStateCopyWith(_MessagehistoryState value,
          $Res Function(_MessagehistoryState) then) =
      __$MessagehistoryStateCopyWithImpl<$Res>;
  @override
  $Res call({List<LastMessage> lastMessages, bool isSubmitting});
}

/// @nodoc
class __$MessagehistoryStateCopyWithImpl<$Res>
    extends _$MessagehistoryStateCopyWithImpl<$Res>
    implements _$MessagehistoryStateCopyWith<$Res> {
  __$MessagehistoryStateCopyWithImpl(
      _MessagehistoryState _value, $Res Function(_MessagehistoryState) _then)
      : super(_value, (v) => _then(v as _MessagehistoryState));

  @override
  _MessagehistoryState get _value => super._value as _MessagehistoryState;

  @override
  $Res call({
    Object? lastMessages = freezed,
    Object? isSubmitting = freezed,
  }) {
    return _then(_MessagehistoryState(
      lastMessages: lastMessages == freezed
          ? _value.lastMessages
          : lastMessages // ignore: cast_nullable_to_non_nullable
              as List<LastMessage>,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MessagehistoryState implements _MessagehistoryState {
  const _$_MessagehistoryState(
      {required this.lastMessages, required this.isSubmitting});

  @override
  final List<LastMessage> lastMessages;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'MessagehistoryState(lastMessages: $lastMessages, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MessagehistoryState &&
            const DeepCollectionEquality()
                .equals(other.lastMessages, lastMessages) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(lastMessages), isSubmitting);

  @JsonKey(ignore: true)
  @override
  _$MessagehistoryStateCopyWith<_MessagehistoryState> get copyWith =>
      __$MessagehistoryStateCopyWithImpl<_MessagehistoryState>(
          this, _$identity);
}

abstract class _MessagehistoryState implements MessagehistoryState {
  const factory _MessagehistoryState(
      {required List<LastMessage> lastMessages,
      required bool isSubmitting}) = _$_MessagehistoryState;

  @override
  List<LastMessage> get lastMessages;
  @override
  bool get isSubmitting;
  @override
  @JsonKey(ignore: true)
  _$MessagehistoryStateCopyWith<_MessagehistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
