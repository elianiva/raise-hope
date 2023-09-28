import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

part 'app_router.gr.dart';

@LazySingleton()
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: OnboardingRoute.page),
        AutoRoute(page: RegisterVolunteerRoute.page),
        AutoRoute(page: RegisterInstitutionRoute.page),
        AutoRoute(page: RegisterCongratulationRoute.page),
        AutoRoute(
          page: HomeRoute.page,
          children: [
            AutoRoute(
              page: HeroEmptyRouterRoute.page,
              initial: true,
              children: [
                AutoRoute(page: HomeMainRoute.page, initial: true),
                AutoRoute(page: MissionDetailRoute.page),
              ],
            ),
            AutoRoute(page: HomeMissionRoute.page),
            AutoRoute(
              page: HeroEmptyRouterRoute.page,
              children: [
                AutoRoute(page: ChatListRoute.page, initial: true),
              ],
            ),
          ],
        ),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: KarmaMainRoute.page),
        AutoRoute(page: ProfileRoute.page),
        AutoRoute(page: ChatRoute.page),
      ];
}
