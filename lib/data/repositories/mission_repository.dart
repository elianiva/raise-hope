import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:raise_hope/common/errors/api_exception.dart';
import 'package:raise_hope/data/models/institution.dart';
import 'package:raise_hope/data/models/mission.dart';
import 'package:raise_hope/data/models/point.dart';

@injectable
class MissionRepository {
  final List<String> typesOfHelp = [
    'fund-raising',
    'helping-hand',
    'donation',
    'health',
    'education',
    'building',
  ];
  final List<Mission> missions = [
    Mission(
      id: "mission-1",
      title: 'Help Orphanage to Build a New Building',
      description:
          'Help orphanage to build a new building so they can help more children. Currently they only have 1 building and it\'s not enough to help all the children.',
      targetVolunteer: 40,
      startDate: DateTime.now(),
      endDate: DateTime.now(),
      typeOfHelp: 'fund-raising',
      images: [
        'https://images.unsplash.com/photo-1488521787991-ed7bbaae773c?&auto=format&fit=crop&w=600&q=80',
        'https://images.unsplash.com/photo-1459183885421-5cc683b8dbba?&auto=format&fit=crop&w=600&q=80',
        'https://images.unsplash.com/photo-1531579797967-8a246a9395a9?&auto=format&fit=crop&w=600&q=80',
      ],
      karmaReward: 250,
      location: const Point(latitude: -7.944093619642294, longitude: 112.61457347546616),
      institution: const Institution(
        id: "institution-1",
        name: 'Rumah Yatim Piatu',
        email: 'contact@rumahyatimpiatu.org',
        website: 'rumahyatimpiatu.org',
        phoneNumber: '08123456789',
        country: 'Indonesia',
        province: 'DKI Jakarta',
        city: 'Jakarta Selatan',
        address:
            'Jl. Jend. Sudirman No.Kav 54-55, RT.5/RW.3, Senayan, Kec. Kby. Baru, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12190',
        postalCode: '12190',
        organizationType: "Non Profit",
        organizationSize: '100-500',
        typeOfHelp: ['Building'],
      ),
    ),
    Mission(
      id: "mission-2",
      title: 'Help Earthquake Victims During Reconstruction',
      description:
          'Help earthquake victims during reconstruction in Lombok, Indonesia. We need your help on the resource and also helping hand while their house is being reconstructed.',
      targetVolunteer: 30,
      startDate: DateTime.now(),
      endDate: DateTime.now(),
      typeOfHelp: 'helping-hand',
      images: [
        'https://images.unsplash.com/photo-1617585411149-54e9fdf60348?auto=format&fit=crop&w=600&q=80',
        'https://images.unsplash.com/photo-1621077742331-2df96a07cca7?auto=format&fit=crop&w=600&q=80',
        'https://images.unsplash.com/photo-1683582256158-88dfd22948fa?auto=format&fit=crop&w=600&q=80',
      ],
      karmaReward: 100,
      location: const Point(latitude: -7.944093619642294, longitude: 112.61457347546616),
      institution: const Institution(
        id: "institution-2",
        name: 'Bantu Indonesia',
        email: 'info@bantuindonesia.com',
        website: 'bantuindonesia.com',
        phoneNumber: '08123456789',
        country: 'Indonesia',
        province: 'DKI Jakarta',
        city: 'Jakarta Selatan',
        address:
            'Jl. Jend. Sudirman No.Kav 54-55, RT.5/RW.3, Senayan, Kec. Kby. Baru, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12190',
        postalCode: '12190',
        organizationType: "Non Profit",
        organizationSize: '100-500',
        typeOfHelp: ['helping-hand', 'donation'],
      ),
    ),
    Mission(
      id: "mission-3",
      title: 'Donate Blood to Help People with Thalassemia',
      description: 'Donate blood to help people with thalassemia. We need your help to save their life. Thank you!',
      targetVolunteer: 12,
      startDate: DateTime.now(),
      endDate: DateTime.now(),
      typeOfHelp: 'health',
      images: [
        'https://images.unsplash.com/photo-1536856136534-bb679c52a9aa?auto=format&fit=crop&w=600&q=80',
        'https://images.unsplash.com/photo-1615461066841-6116e61058f4?auto=format&fit=crop&w=600&q=80',
        'https://images.unsplash.com/photo-1542884841-9f546e727bca?auto=format&fit=crop&w=600&q=80',
      ],
      karmaReward: 80,
      location: const Point(latitude: -7.944093619642294, longitude: 112.61457347546616),
      institution: const Institution(
        id: "institution-3",
        name: 'Palang Merah Indonesia',
        email: 'contact@pmi.or.id',
        website: 'pmi.or.id',
        phoneNumber: '08123456789',
        country: 'Indonesia',
        province: 'DKI Jakarta',
        city: 'Jakarta Selatan',
        address:
            'Jl. Jend. Sudirman No.Kav 54-55, RT.5/RW.3, Senayan, Kec. Kby. Baru, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12190',
        postalCode: '12190',
        organizationType: "Non Profit",
        organizationSize: '100-500',
        typeOfHelp: ['health'],
      ),
    ),
    Mission(
      id: "mission-4",
      title: 'Teach Children to Read and Write',
      description: 'Teach children to read and write in remote areas where there is no school',
      targetVolunteer: 10,
      startDate: DateTime.now(),
      endDate: DateTime.now(),
      typeOfHelp: 'education',
      images: [
        'https://plus.unsplash.com/premium_photo-1664047391710-69543f7b55d2?fit=crop&w=600&q=80',
      ],
      karmaReward: 140,
      location: const Point(latitude: -7.944093619642294, longitude: 112.61457347546616),
      institution: const Institution(
        id: "institution-4",
        name: 'Yayasan Pendidikan Anak Indonesia',
        email: 'contact@ypai.or.id',
        website: 'ypai.or.id',
        phoneNumber: '08123456789',
        country: 'Indonesia',
        province: 'DKI Jakarta',
        city: 'Jakarta Selatan',
        address:
            'Jl. Jend. Sudirman No.Kav 54-55, RT.5/RW.3, Senayan, Kec. Kby. Baru, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12190',
        postalCode: '12190',
        organizationType: "Non Profit",
        organizationSize: '100-500',
        typeOfHelp: ['education'],
      ),
    ),
  ];
  final FirebaseFunctions _functions;

  MissionRepository(this._functions);

  Future<Either<ApiException, List<Mission>>> getAllMissions() async {
    try {
      // TODO(elianiva): enable this later when we've got the integration working
      // final callable = _functions.httpsCallable('getAllMissions');
      // final result = await callable.call();

      // if (result.data['error'] != null) {
      //   return left(ApiException.unAuthorized(result.data['error']));
      // }

      return right(missions);
    } on Exception catch (e) {
      return left(ApiException.unAuthorized(e.toString()));
    }
  }

  Future<Either<ApiException, List<Mission>>> getMissionsByTypeOfHelp(String typeOfHelp) async {
    try {
      // final callable = _functions.httpsCallable('getMissionsByTypeOfHelp');
      // final result = await callable.call({'typeOfHelp': typeOfHelp});

      // if (result.data['error'] != null) {
      //   return left(ApiException.unAuthorized(result.data['error']));
      // }

      return right(missions.where((mission) => mission.typeOfHelp == typeOfHelp).toList());
    } on Exception catch (e) {
      return left(ApiException.unAuthorized(e.toString()));
    }
  }

  Future<Either<ApiException, List<String>>> getTypesOfHelp() async {
    try {
      // final callable = _functions.httpsCallable('getTypesOfHelp');
      // final result = await callable.call();

      // if (result.data['error'] != null) {
      //   return left(ApiException.unAuthorized(result.data['error']));
      // }

      return right(typesOfHelp);
    } on Exception catch (e) {
      return left(ApiException.unAuthorized(e.toString()));
    }
  }
}
