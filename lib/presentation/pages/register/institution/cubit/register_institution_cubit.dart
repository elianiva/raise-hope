import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:raise_hope/common/enums/organization_size.dart';
import 'package:raise_hope/common/enums/organization_types.dart';
import 'package:raise_hope/common/errors/api_exception.dart';
import 'package:raise_hope/data/models/countrystatecity/city.dart';
import 'package:raise_hope/data/models/countrystatecity/country.dart';
import 'package:raise_hope/data/models/countrystatecity/province.dart';
import 'package:raise_hope/data/repositories/auth_repository.dart';

part 'register_institution_cubit.freezed.dart';
part 'register_institution_state.dart';

@injectable
class RegisterInstitutionCubit extends Cubit<RegisterInstitutionState> {
  final AuthRepository _authRepository;
  final FirebaseAuth _firebaseAuth;

  RegisterInstitutionCubit(
    this._authRepository,
    this._firebaseAuth,
  ) : super(
          const RegisterInstitutionState.personalData(
            RegisterInstitutionData(),
          ),
        );

  void initializeWithCurrentUser() {
    final account = _firebaseAuth.currentUser;

    final newData = state.data.copyWith(
      name: account?.displayName,
      email: account?.email,
      isUsingCurrentUser: true,
    );

    emit(state.copyWith(data: newData));
  }

  void updatePersonalData({
    String? name,
    String? email,
    String? website,
    String? phoneNumber,
    String? password,
  }) {
    final newData = state.data.copyWith(
      name: name,
      email: email,
      website: website,
      phoneNumber: phoneNumber,
      password: password,
    );

    emit(state.copyWith(data: newData));
  }

  Future<void> updateAddressInformation({
    Country? country,
    Province? province,
    City? city,
    String? address,
    String? postalCode,
  }) async {
    final newData = state.data.copyWith(
      country: country,
      province: province,
      city: city,
      address: address,
      postalCode: postalCode,
    );

    emit(state.copyWith(data: newData));
  }

  void updateBackground({
    OrganizationType? organizationType,
    OrganizationSize? organizationSize,
    List<String>? typeOfHelp,
  }) {
    final newData = state.data.copyWith(
      organizationType: organizationType,
      organizationSize: organizationSize,
      typeOfHelp: typeOfHelp,
    );

    emit(state.copyWith(data: newData));
  }

  void previousStep() {
    state.maybeWhen(
      background: (data) => emit(RegisterInstitutionState.addressInformation(data)),
      addressInformation: (data) => emit(RegisterInstitutionState.personalData(data)),
      orElse: () {},
    );
  }

  void nextStep() {
    state.maybeWhen(
      personalData: (data) => emit(RegisterInstitutionState.addressInformation(data)),
      addressInformation: (data) => emit(RegisterInstitutionState.background(data)),
      orElse: () {},
    );
  }

  Future<ApiException?> submit() {
    return state.maybeWhen(
      background: _submit,
      orElse: () async => null,
    );
  }

  Future<ApiException?> _submit(RegisterInstitutionData data) async {
    final response = data.isUsingCurrentUser
        ? await _authRepository.registerInstitutionWithCurrentUser(data)
        : await _authRepository.registerInstitution(data);

    return response.fold(
      (l) => l,
      (r) => null,
    );
  }
}
