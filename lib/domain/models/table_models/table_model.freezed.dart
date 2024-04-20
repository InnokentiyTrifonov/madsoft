// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TableModel {
  String get title => throw _privateConstructorUsedError;
  int get filmed => throw _privateConstructorUsedError;
  int get available => throw _privateConstructorUsedError;
  double get needMemory => throw _privateConstructorUsedError;
  List<Point> get points => throw _privateConstructorUsedError;
  int? get availableMemory => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TableModelCopyWith<TableModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableModelCopyWith<$Res> {
  factory $TableModelCopyWith(
          TableModel value, $Res Function(TableModel) then) =
      _$TableModelCopyWithImpl<$Res, TableModel>;
  @useResult
  $Res call(
      {String title,
      int filmed,
      int available,
      double needMemory,
      List<Point> points,
      int? availableMemory});
}

/// @nodoc
class _$TableModelCopyWithImpl<$Res, $Val extends TableModel>
    implements $TableModelCopyWith<$Res> {
  _$TableModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? filmed = null,
    Object? available = null,
    Object? needMemory = null,
    Object? points = null,
    Object? availableMemory = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      filmed: null == filmed
          ? _value.filmed
          : filmed // ignore: cast_nullable_to_non_nullable
              as int,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int,
      needMemory: null == needMemory
          ? _value.needMemory
          : needMemory // ignore: cast_nullable_to_non_nullable
              as double,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<Point>,
      availableMemory: freezed == availableMemory
          ? _value.availableMemory
          : availableMemory // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TableModelImplCopyWith<$Res>
    implements $TableModelCopyWith<$Res> {
  factory _$$TableModelImplCopyWith(
          _$TableModelImpl value, $Res Function(_$TableModelImpl) then) =
      __$$TableModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      int filmed,
      int available,
      double needMemory,
      List<Point> points,
      int? availableMemory});
}

/// @nodoc
class __$$TableModelImplCopyWithImpl<$Res>
    extends _$TableModelCopyWithImpl<$Res, _$TableModelImpl>
    implements _$$TableModelImplCopyWith<$Res> {
  __$$TableModelImplCopyWithImpl(
      _$TableModelImpl _value, $Res Function(_$TableModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? filmed = null,
    Object? available = null,
    Object? needMemory = null,
    Object? points = null,
    Object? availableMemory = freezed,
  }) {
    return _then(_$TableModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      filmed: null == filmed
          ? _value.filmed
          : filmed // ignore: cast_nullable_to_non_nullable
              as int,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int,
      needMemory: null == needMemory
          ? _value.needMemory
          : needMemory // ignore: cast_nullable_to_non_nullable
              as double,
      points: null == points
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<Point>,
      availableMemory: freezed == availableMemory
          ? _value.availableMemory
          : availableMemory // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$TableModelImpl implements _TableModel {
  const _$TableModelImpl(
      {required this.title,
      required this.filmed,
      required this.available,
      required this.needMemory,
      required final List<Point> points,
      this.availableMemory})
      : _points = points;

  @override
  final String title;
  @override
  final int filmed;
  @override
  final int available;
  @override
  final double needMemory;
  final List<Point> _points;
  @override
  List<Point> get points {
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  final int? availableMemory;

  @override
  String toString() {
    return 'TableModel(title: $title, filmed: $filmed, available: $available, needMemory: $needMemory, points: $points, availableMemory: $availableMemory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.filmed, filmed) || other.filmed == filmed) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.needMemory, needMemory) ||
                other.needMemory == needMemory) &&
            const DeepCollectionEquality().equals(other._points, _points) &&
            (identical(other.availableMemory, availableMemory) ||
                other.availableMemory == availableMemory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      filmed,
      available,
      needMemory,
      const DeepCollectionEquality().hash(_points),
      availableMemory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TableModelImplCopyWith<_$TableModelImpl> get copyWith =>
      __$$TableModelImplCopyWithImpl<_$TableModelImpl>(this, _$identity);
}

abstract class _TableModel implements TableModel {
  const factory _TableModel(
      {required final String title,
      required final int filmed,
      required final int available,
      required final double needMemory,
      required final List<Point> points,
      final int? availableMemory}) = _$TableModelImpl;

  @override
  String get title;
  @override
  int get filmed;
  @override
  int get available;
  @override
  double get needMemory;
  @override
  List<Point> get points;
  @override
  int? get availableMemory;
  @override
  @JsonKey(ignore: true)
  _$$TableModelImplCopyWith<_$TableModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
