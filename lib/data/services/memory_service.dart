import 'package:disk_space/disk_space.dart';

class MemoryService {
  static Future<int?> getAvalableDiskSpace() async {
    final mb = await DiskSpace.getFreeDiskSpace;
    if (mb != null) {
      return mb ~/ 1024;
    }
    return null;
  }
}
