// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MissionImpl _$$MissionImplFromJson(Map<String, dynamic> json) =>
    _$MissionImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      targetVolunteer: json['targetVolunteer'] as int,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      typeOfHelp: json['typeOfHelp'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      institution:
          Institution.fromJson(json['institution'] as Map<String, dynamic>),
      karmaReward: json['karmaReward'] as int,
      location: Point.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MissionImplToJson(_$MissionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'targetVolunteer': instance.targetVolunteer,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'typeOfHelp': instance.typeOfHelp,
      'images': instance.images,
      'institution': instance.institution,
      'karmaReward': instance.karmaReward,
      'location': instance.location,
    };
