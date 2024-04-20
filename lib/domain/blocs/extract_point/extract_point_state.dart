part of 'extract_point_bloc.dart';

abstract class ExtractPointState {}

class ExtractPointInitial extends ExtractPointState {}

class ExtractPointExtracted extends ExtractPointState {
  ExtractPointExtracted({required this.points});
  final List<Point> points;
}
