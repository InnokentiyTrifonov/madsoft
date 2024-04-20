import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mad_soft/domain/models/point/point.dart';
part 'table_model.freezed.dart';

@freezed
class TableModel with _$TableModel {
  const factory TableModel({
    required String title,
    required int filmed,
    required int available,
    required double needMemory,
    required List<Point> points,
    int? availableMemory,
  }) = _TableModel;
}
