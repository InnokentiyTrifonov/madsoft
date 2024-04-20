part of 'extract_point_bloc.dart';

abstract class ExtractPointEvent {}

class ExtractPointSelectedTable extends ExtractPointEvent {
  ExtractPointSelectedTable({required this.selectedTable});
  final TableModel selectedTable;
}
