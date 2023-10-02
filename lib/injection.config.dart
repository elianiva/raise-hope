// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:cloud_functions/cloud_functions.dart' as _i8;
import 'package:firebase_analytics/firebase_analytics.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i6;
import 'package:firebase_performance/firebase_performance.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i10;
import 'package:image_picker/image_picker.dart' as _i11;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i13;

import 'common/network/network_info.dart' as _i15;
import 'common/utils/image_resize.dart' as _i12;
import 'data/datasources/network/network_source.dart' as _i21;
import 'data/datasources/session/session_source.dart' as _i16;
import 'data/repositories/auth_repository.dart' as _i17;
import 'data/repositories/chat_repository.dart' as _i18;
import 'data/repositories/mission_repository.dart' as _i14;
import 'presentation/pages/register/institution/cubit/register_institution_cubit.dart'
    as _i19;
import 'presentation/pages/register/volunteer/cubit/register_volunteer_cubit.dart'
    as _i20;
import 'presentation/routes/app_router.dart' as _i3;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final apiService = _$ApiService();
  gh.lazySingleton<_i3.AppRouter>(() => _i3.AppRouter());
  gh.lazySingleton<_i4.FirebaseAnalytics>(() => apiService.firebaseAnalytics);
  gh.lazySingleton<_i5.FirebaseAuth>(() => apiService.firebaseAuth);
  gh.lazySingleton<_i6.FirebaseCrashlytics>(
      () => apiService.firebaseCrashlytics);
  gh.lazySingleton<_i7.FirebaseFirestore>(() => apiService.firebaseFirestore);
  gh.lazySingleton<_i8.FirebaseFunctions>(() => apiService.cloudFunctions);
  gh.lazySingleton<_i9.FirebasePerformance>(
      () => apiService.firebasePerformance);
  gh.lazySingleton<_i10.GoogleSignIn>(() => apiService.googleSignIn);
  gh.lazySingleton<_i11.ImagePicker>(() => apiService.imagePicker);
  gh.lazySingleton<_i12.ImageResizeUtils>(() => _i12.ImageResizeUtils());
  gh.lazySingleton<_i13.InternetConnectionChecker>(
      () => apiService.internetConnectionChecker());
  gh.factory<_i14.MissionRepository>(
      () => _i14.MissionRepository(gh<_i8.FirebaseFunctions>()));
  gh.lazySingleton<_i15.NetworkInfo>(
      () => _i15.NetworkInfoImpl(gh<_i13.InternetConnectionChecker>()));
  gh.lazySingleton<_i16.SessionSource>(() => _i16.SessionSource(gh<String>()));
  gh.factory<_i17.AuthRepository>(() => _i17.AuthRepository(
        gh<_i5.FirebaseAuth>(),
        gh<_i8.FirebaseFunctions>(),
      ));
  gh.factory<_i18.ChatRepository>(
      () => _i18.ChatRepository(gh<_i8.FirebaseFunctions>()));
  gh.factory<_i19.RegisterInstitutionCubit>(() => _i19.RegisterInstitutionCubit(
        gh<_i17.AuthRepository>(),
        gh<_i5.FirebaseAuth>(),
      ));
  gh.factory<_i20.RegisterVolunteerCubit>(() => _i20.RegisterVolunteerCubit(
        gh<_i17.AuthRepository>(),
        gh<_i5.FirebaseAuth>(),
      ));
  return getIt;
}

class _$ApiService extends _i21.ApiService {}
