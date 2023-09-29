import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raise_hope/data/models/institution.dart';
import 'package:raise_hope/data/models/point.dart';

part 'mission.g.dart';
part 'mission.freezed.dart';

@freezed
class Mission with _$Mission {
  const factory Mission({
    required String id,
    required String title,
    required String description,
    required int targetVolunteer,
    required DateTime startDate,
    required DateTime endDate,
    required String typeOfHelp,
    required List<String> images,
    required Institution institution,
    required int karmaReward,
    required Point location,
  }) = _Mission;

  factory Mission.fromJson(Map<String, dynamic> json) => _$MissionFromJson(json);
}
