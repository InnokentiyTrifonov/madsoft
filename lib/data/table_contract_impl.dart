import 'package:mad_soft/data/services/api_service.dart';
import 'package:mad_soft/data/services/memory_service.dart';
import 'package:mad_soft/domain/models/point/point.dart';
import 'package:mad_soft/domain/models/table_models/table_model.dart';
import 'package:mad_soft/domain/service_contract.dart';

class TableContractImpl implements TableContract {
  @override
  Future<List<TableModel>> getData() async {
    List<TableModel> spongesBobs = [];
    try {
      final spongeBob = await ApiService.getData();
      final memory = await MemoryService.getAvalableDiskSpace();

      for (var element in spongeBob.payload) {
        spongesBobs.add(TableModel(
          title: element.title,
          filmed: element.total_points_count - element.remaining_points,
          available: element.remaining_points,
          needMemory: element.total_points_count * 5,
          points: element.points.map((e) => Point(x: e.x, y: e.y)).toList(),
          availableMemory: memory,
        ));
      }
      return spongesBobs;
    } on Exception catch (e) {
      return Future.error(e);
    }
  }
}
