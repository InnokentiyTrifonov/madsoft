import 'package:mad_soft/domain/models/table_models/table_model.dart';

abstract interface class TableContract {
  Future<List<TableModel>> getData();
}
