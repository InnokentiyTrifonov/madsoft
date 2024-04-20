// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'something.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SomethingImpl _$$SomethingImplFromJson(Map<String, dynamic> json) =>
    _$SomethingImpl(
      title: json['title'] as String,
      remaining_points: json['remaining_points'] as int,
      total_points_count: json['total_points_count'] as int,
      points: (json['points'] as List<dynamic>)
          .map((e) => Point.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SomethingImplToJson(_$SomethingImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'remaining_points': instance.remaining_points,
      'total_points_count': instance.total_points_count,
      'points': instance.points,
    };
