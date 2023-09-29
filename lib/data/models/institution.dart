import 'package:freezed_annotation/freezed_annotation.dart';

part 'institution.g.dart';
part 'institution.freezed.dart';

@freezed
class Institution with _$Institution {
  const factory Institution({
    required String id,
    required String name,
    required String email,
    required String website,
    required String phoneNumber,
    required String country,
    required String province,
    required String city,
    required String address,
    required String postalCode,
    required String organizationType,
    required String organizationSize,
    required List<String> typeOfHelp,
  }) = _Institution;

  factory Institution.fromJson(Map<String, dynamic> json) => _$InstitutionFromJson(json);
}
