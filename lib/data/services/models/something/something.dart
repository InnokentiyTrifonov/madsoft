import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mad_soft/data/services/models/point/point.dart';
part 'something.freezed.dart';
part 'something.g.dart';

@freezed
class Something with _$Something {
  const factory Something({
    required String title,
    required int remaining_points,
    required int total_points_count,
    required List<Point> points,
  }) = _Something;

  factory Something.fromJson(Map<String, dynamic> json) => _$SomethingFromJson(json);
}
