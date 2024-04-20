import 'package:freezed_annotation/freezed_annotation.dart';
import '../something/something.dart';
part 'payload.freezed.dart';
part 'payload.g.dart';

@freezed
class Payload with _$Payload {
  const factory Payload({
    required List<Something> payload,
  }) = _Payload;

  factory Payload.fromJson(Map<String, dynamic> json) => _$PayloadFromJson(json);
}
