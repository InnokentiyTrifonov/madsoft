import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mad_soft/domain/models/point/point.dart';
import 'package:mad_soft/domain/models/table_models/table_model.dart';

part 'extract_point_event.dart';
part 'extract_point_state.dart';

class ExtractPointBloc extends Bloc<ExtractPointEvent, ExtractPointState> {
  ExtractPointBloc() : super(ExtractPointInitial()) {
    on<ExtractPointSelectedTable>((event, emit) {
      final points = event.selectedTable.points;
      emit(
        ExtractPointExtracted(points: points),
      );
    });
  }
}
