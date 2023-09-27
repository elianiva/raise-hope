import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raise_hope/data/models/countrystatecity/country.dart';
import 'package:raise_hope/data/models/countrystatecity/province.dart';
import 'package:raise_hope/data/repositories/country_state_city_repository.dart';

part 'province_provider.freezed.dart';

@freezed
class ProvinceFamily with _$ProvinceFamily {
  const factory ProvinceFamily({
    required Country? country,
  }) = _ProvinceFamily;
}

final provinceProvider = FutureProvider.family<List<Province>, ProvinceFamily>((
  ref,
  data,
) async {
  if (data.country == null) {
    return [];
  }

  final repository = ref.watch(countryStateCityRepositoryProvider);

  final result = await repository.getProvince(data.country!);

  return result.fold((l) => [], (r) => r);
});
