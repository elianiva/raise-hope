// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'institution.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InstitutionImpl _$$InstitutionImplFromJson(Map<String, dynamic> json) =>
    _$InstitutionImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      website: json['website'] as String,
      phoneNumber: json['phoneNumber'] as String,
      country: json['country'] as String,
      province: json['province'] as String,
      city: json['city'] as String,
      address: json['address'] as String,
      postalCode: json['postalCode'] as String,
      organizationType: json['organizationType'] as String,
      organizationSize: json['organizationSize'] as String,
      typeOfHelp: (json['typeOfHelp'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$InstitutionImplToJson(_$InstitutionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'website': instance.website,
      'phoneNumber': instance.phoneNumber,
      'country': instance.country,
      'province': instance.province,
      'city': instance.city,
      'address': instance.address,
      'postalCode': instance.postalCode,
      'organizationType': instance.organizationType,
      'organizationSize': instance.organizationSize,
      'typeOfHelp': instance.typeOfHelp,
    };
