import 'package:mad_soft/data/services/models/payload/payload.dart';
import 'package:dio/dio.dart';

class ApiService {
  static Future<Payload> getData() async {
    try {
      final responce = await Dio().get("https://json-parser.com/f5628f20.json");
      return Payload.fromJson(responce.data);
    } on Exception catch (e) {
      return Future.error(e);
    }
  }
}
