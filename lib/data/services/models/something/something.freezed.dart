// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'something.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Something _$SomethingFromJson(Map<String, dynamic> json) {
  return _Something.fromJson(json);
}

/// @nodoc
mixin _$Something {
  String get title => throw _privateConstructorUsedError;
  int get remaining_points => throw _privateConstructorUsedError;
  int get total_points_count => throw _privateConstructorUsedError;
  List<Point> get points => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SomethingCopyWith<Something> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SomethingCopyWith<$Res> {
  factory $SomethingCopyWith(Something value, $Res Function(Something) then) =
      _$SomethingCopyWithImpl<$Res, Something>;
  @useResult
  $Res call(
      {String title,
      int remaining_points,
      int total_points_count,
      List<Point> points});
}

/// @nodoc
class _$SomethingCopyWithImpl<$Res, $Val extends Something>
    implements $SomethingCopyWith<$Res> {
  _$SomethingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? remaining_points = null,
    Object? total_points_count = null,
    Object? points = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      remaining_points: null == remaining_points
          ? _value.remaining_points
          : remaining_points // ignore: cast_nullable_to_non_nullable
              as int,
      total_points_count: null == total_points_count
          ? _value.total_points_count
          : total_points_count // ignore: cast_nullable_to_non_nullable
              as int,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<Point>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SomethingImplCopyWith<$Res>
    implements $SomethingCopyWith<$Res> {
  factory _$$SomethingImplCopyWith(
          _$SomethingImpl value, $Res Function(_$SomethingImpl) then) =
      __$$SomethingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      int remaining_points,
      int total_points_count,
      List<Point> points});
}

/// @nodoc
class __$$SomethingImplCopyWithImpl<$Res>
    extends _$SomethingCopyWithImpl<$Res, _$SomethingImpl>
    implements _$$SomethingImplCopyWith<$Res> {
  __$$SomethingImplCopyWithImpl(
      _$SomethingImpl _value, $Res Function(_$SomethingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? remaining_points = null,
    Object? total_points_count = null,
    Object? points = null,
  }) {
    return _then(_$SomethingImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      remaining_points: null == remaining_points
          ? _value.remaining_points
          : remaining_points // ignore: cast_nullable_to_non_nullable
              as int,
      total_points_count: null == total_points_count
          ? _value.total_points_count
          : total_points_count // ignore: cast_nullable_to_non_nullable
              as int,
      points: null == points
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<Point>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SomethingImpl implements _Something {
  const _$SomethingImpl(
      {required this.title,
      required this.remaining_points,
      required this.total_points_count,
      required final List<Point> points})
      : _points = points;

  factory _$SomethingImpl.fromJson(Map<String, dynamic> json) =>
      _$$SomethingImplFromJson(json);

  @override
  final String title;
  @override
  final int remaining_points;
  @override
  final int total_points_count;
  final List<Point> _points;
  @override
  List<Point> get points {
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  String toString() {
    return 'Something(title: $title, remaining_points: $remaining_points, total_points_count: $total_points_count, points: $points)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SomethingImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.remaining_points, remaining_points) ||
                other.remaining_points == remaining_points) &&
            (identical(other.total_points_count, total_points_count) ||
                other.total_points_count == total_points_count) &&
            const DeepCollectionEquality().equals(other._points, _points));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, remaining_points,
      total_points_count, const DeepCollectionEquality().hash(_points));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SomethingImplCopyWith<_$SomethingImpl> get copyWith =>
      __$$SomethingImplCopyWithImpl<_$SomethingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SomethingImplToJson(
      this,
    );
  }
}

abstract class _Something implements Something {
  const factory _Something(
      {required final String title,
      required final int remaining_points,
      required final int total_points_count,
      required final List<Point> points}) = _$SomethingImpl;

  factory _Something.fromJson(Map<String, dynamic> json) =
      _$SomethingImpl.fromJson;

  @override
  String get title;
  @override
  int get remaining_points;
  @override
  int get total_points_count;
  @override
  List<Point> get points;
  @override
  @JsonKey(ignore: true)
  _$$SomethingImplCopyWith<_$SomethingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
