import 'package:freezed_annotation/freezed_annotation.dart';

part 'point.g.dart';
part 'point.freezed.dart';

@freezed
class Point with _$Point {
  const factory Point({
    required double latitude,
    required double longitude,
  }) = _Point;

  factory Point.fromJson(Map<String, dynamic> json) => _$PointFromJson(json);
}
