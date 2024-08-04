// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HistoryPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadHistoryPageEvent value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadHistoryPageEvent value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadHistoryPageEvent value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryPageEventCopyWith<$Res> {
  factory $HistoryPageEventCopyWith(
          HistoryPageEvent value, $Res Function(HistoryPageEvent) then) =
      _$HistoryPageEventCopyWithImpl<$Res, HistoryPageEvent>;
}

/// @nodoc
class _$HistoryPageEventCopyWithImpl<$Res, $Val extends HistoryPageEvent>
    implements $HistoryPageEventCopyWith<$Res> {
  _$HistoryPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadHistoryPageEventImplCopyWith<$Res> {
  factory _$$LoadHistoryPageEventImplCopyWith(_$LoadHistoryPageEventImpl value,
          $Res Function(_$LoadHistoryPageEventImpl) then) =
      __$$LoadHistoryPageEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadHistoryPageEventImplCopyWithImpl<$Res>
    extends _$HistoryPageEventCopyWithImpl<$Res, _$LoadHistoryPageEventImpl>
    implements _$$LoadHistoryPageEventImplCopyWith<$Res> {
  __$$LoadHistoryPageEventImplCopyWithImpl(_$LoadHistoryPageEventImpl _value,
      $Res Function(_$LoadHistoryPageEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadHistoryPageEventImpl implements _LoadHistoryPageEvent {
  const _$LoadHistoryPageEventImpl();

  @override
  String toString() {
    return 'HistoryPageEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadHistoryPageEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadHistoryPageEvent value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadHistoryPageEvent value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadHistoryPageEvent value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _LoadHistoryPageEvent implements HistoryPageEvent {
  const factory _LoadHistoryPageEvent() = _$LoadHistoryPageEventImpl;
}

/// @nodoc
mixin _$HistoryPageState {
  UiState get uiState => throw _privateConstructorUsedError;
  List<TransactionDetails> get transactionsHistoryList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryPageStateCopyWith<HistoryPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryPageStateCopyWith<$Res> {
  factory $HistoryPageStateCopyWith(
          HistoryPageState value, $Res Function(HistoryPageState) then) =
      _$HistoryPageStateCopyWithImpl<$Res, HistoryPageState>;
  @useResult
  $Res call(
      {UiState uiState, List<TransactionDetails> transactionsHistoryList});

  $UiStateCopyWith<$Res> get uiState;
}

/// @nodoc
class _$HistoryPageStateCopyWithImpl<$Res, $Val extends HistoryPageState>
    implements $HistoryPageStateCopyWith<$Res> {
  _$HistoryPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uiState = null,
    Object? transactionsHistoryList = null,
  }) {
    return _then(_value.copyWith(
      uiState: null == uiState
          ? _value.uiState
          : uiState // ignore: cast_nullable_to_non_nullable
              as UiState,
      transactionsHistoryList: null == transactionsHistoryList
          ? _value.transactionsHistoryList
          : transactionsHistoryList // ignore: cast_nullable_to_non_nullable
              as List<TransactionDetails>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UiStateCopyWith<$Res> get uiState {
    return $UiStateCopyWith<$Res>(_value.uiState, (value) {
      return _then(_value.copyWith(uiState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HistoryPageStateImplCopyWith<$Res>
    implements $HistoryPageStateCopyWith<$Res> {
  factory _$$HistoryPageStateImplCopyWith(_$HistoryPageStateImpl value,
          $Res Function(_$HistoryPageStateImpl) then) =
      __$$HistoryPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UiState uiState, List<TransactionDetails> transactionsHistoryList});

  @override
  $UiStateCopyWith<$Res> get uiState;
}

/// @nodoc
class __$$HistoryPageStateImplCopyWithImpl<$Res>
    extends _$HistoryPageStateCopyWithImpl<$Res, _$HistoryPageStateImpl>
    implements _$$HistoryPageStateImplCopyWith<$Res> {
  __$$HistoryPageStateImplCopyWithImpl(_$HistoryPageStateImpl _value,
      $Res Function(_$HistoryPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uiState = null,
    Object? transactionsHistoryList = null,
  }) {
    return _then(_$HistoryPageStateImpl(
      uiState: null == uiState
          ? _value.uiState
          : uiState // ignore: cast_nullable_to_non_nullable
              as UiState,
      transactionsHistoryList: null == transactionsHistoryList
          ? _value._transactionsHistoryList
          : transactionsHistoryList // ignore: cast_nullable_to_non_nullable
              as List<TransactionDetails>,
    ));
  }
}

/// @nodoc

class _$HistoryPageStateImpl implements _HistoryPageState {
  const _$HistoryPageStateImpl(
      {this.uiState = const UiState.initial(),
      final List<TransactionDetails> transactionsHistoryList = const []})
      : _transactionsHistoryList = transactionsHistoryList;

  @override
  @JsonKey()
  final UiState uiState;
  final List<TransactionDetails> _transactionsHistoryList;
  @override
  @JsonKey()
  List<TransactionDetails> get transactionsHistoryList {
    if (_transactionsHistoryList is EqualUnmodifiableListView)
      return _transactionsHistoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactionsHistoryList);
  }

  @override
  String toString() {
    return 'HistoryPageState(uiState: $uiState, transactionsHistoryList: $transactionsHistoryList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryPageStateImpl &&
            (identical(other.uiState, uiState) || other.uiState == uiState) &&
            const DeepCollectionEquality().equals(
                other._transactionsHistoryList, _transactionsHistoryList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uiState,
      const DeepCollectionEquality().hash(_transactionsHistoryList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryPageStateImplCopyWith<_$HistoryPageStateImpl> get copyWith =>
      __$$HistoryPageStateImplCopyWithImpl<_$HistoryPageStateImpl>(
          this, _$identity);
}

abstract class _HistoryPageState implements HistoryPageState {
  const factory _HistoryPageState(
          {final UiState uiState,
          final List<TransactionDetails> transactionsHistoryList}) =
      _$HistoryPageStateImpl;

  @override
  UiState get uiState;
  @override
  List<TransactionDetails> get transactionsHistoryList;
  @override
  @JsonKey(ignore: true)
  _$$HistoryPageStateImplCopyWith<_$HistoryPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
