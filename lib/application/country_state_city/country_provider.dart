import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:raise_hope/data/models/countrystatecity/country.dart';
import 'package:raise_hope/data/repositories/country_state_city_repository.dart';

final countryProvider = FutureProvider<List<Country>>((ref) async {
  final repository = ref.watch(countryStateCityRepositoryProvider);

  final result = await repository.getCountry();

  return result.fold((l) => [], (r) => r);
});
