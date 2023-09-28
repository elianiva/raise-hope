// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ChatListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChatListPage(),
      );
    },
    ChatRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChatPage(),
      );
    },
    HeroEmptyRouterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HeroEmptyRouterPage(),
      );
    },
    HomeDiscussionRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeDiscussionPage(),
      );
    },
    HomeMainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeMainPage(),
      );
    },
    HomeMissionRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeMissionPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    KarmaMainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const KarmaMainPage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: LoginPage(
          key: args.key,
          isInstitution: args.isInstitution,
        ),
      );
    },
    MissionDetailRoute.name: (routeData) {
      final args = routeData.argsAs<MissionDetailRouteArgs>(
          orElse: () => const MissionDetailRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MissionDetailPage(
          key: args.key,
          heroTag: args.heroTag,
        ),
      );
    },
    OnboardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnboardingPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
    RegisterCongratulationRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterCongratulationRouteArgs>(
          orElse: () => const RegisterCongratulationRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RegisterCongratulationPage(
          key: args.key,
          isInstitution: args.isInstitution,
        ),
      );
    },
    RegisterInstitutionRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterInstitutionRouteArgs>(
          orElse: () => const RegisterInstitutionRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RegisterInstitutionPage(
          key: args.key,
          isUsingCurrentUser: args.isUsingCurrentUser,
        ),
      );
    },
    RegisterVolunteerRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterVolunteerRouteArgs>(
          orElse: () => const RegisterVolunteerRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RegisterVolunteerPage(
          key: args.key,
          isUsingCurrentUser: args.isUsingCurrentUser,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
  };
}

/// generated route for
/// [ChatListPage]
class ChatListRoute extends PageRouteInfo<void> {
  const ChatListRoute({List<PageRouteInfo>? children})
      : super(
          ChatListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChatPage]
class ChatRoute extends PageRouteInfo<void> {
  const ChatRoute({List<PageRouteInfo>? children})
      : super(
          ChatRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HeroEmptyRouterPage]
class HeroEmptyRouterRoute extends PageRouteInfo<void> {
  const HeroEmptyRouterRoute({List<PageRouteInfo>? children})
      : super(
          HeroEmptyRouterRoute.name,
          initialChildren: children,
        );

  static const String name = 'HeroEmptyRouterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeDiscussionPage]
class HomeDiscussionRoute extends PageRouteInfo<void> {
  const HomeDiscussionRoute({List<PageRouteInfo>? children})
      : super(
          HomeDiscussionRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeDiscussionRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeMainPage]
class HomeMainRoute extends PageRouteInfo<void> {
  const HomeMainRoute({List<PageRouteInfo>? children})
      : super(
          HomeMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeMainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeMissionPage]
class HomeMissionRoute extends PageRouteInfo<void> {
  const HomeMissionRoute({List<PageRouteInfo>? children})
      : super(
          HomeMissionRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeMissionRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [KarmaMainPage]
class KarmaMainRoute extends PageRouteInfo<void> {
  const KarmaMainRoute({List<PageRouteInfo>? children})
      : super(
          KarmaMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'KarmaMainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    Key? key,
    bool isInstitution = false,
    List<PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(
            key: key,
            isInstitution: isInstitution,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<LoginRouteArgs> page = PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({
    this.key,
    this.isInstitution = false,
  });

  final Key? key;

  final bool isInstitution;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, isInstitution: $isInstitution}';
  }
}

/// generated route for
/// [MissionDetailPage]
class MissionDetailRoute extends PageRouteInfo<MissionDetailRouteArgs> {
  MissionDetailRoute({
    Key? key,
    String? heroTag,
    List<PageRouteInfo>? children,
  }) : super(
          MissionDetailRoute.name,
          args: MissionDetailRouteArgs(
            key: key,
            heroTag: heroTag,
          ),
          initialChildren: children,
        );

  static const String name = 'MissionDetailRoute';

  static const PageInfo<MissionDetailRouteArgs> page =
      PageInfo<MissionDetailRouteArgs>(name);
}

class MissionDetailRouteArgs {
  const MissionDetailRouteArgs({
    this.key,
    this.heroTag,
  });

  final Key? key;

  final String? heroTag;

  @override
  String toString() {
    return 'MissionDetailRouteArgs{key: $key, heroTag: $heroTag}';
  }
}

/// generated route for
/// [OnboardingPage]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegisterCongratulationPage]
class RegisterCongratulationRoute
    extends PageRouteInfo<RegisterCongratulationRouteArgs> {
  RegisterCongratulationRoute({
    Key? key,
    bool isInstitution = false,
    List<PageRouteInfo>? children,
  }) : super(
          RegisterCongratulationRoute.name,
          args: RegisterCongratulationRouteArgs(
            key: key,
            isInstitution: isInstitution,
          ),
          initialChildren: children,
        );

  static const String name = 'RegisterCongratulationRoute';

  static const PageInfo<RegisterCongratulationRouteArgs> page =
      PageInfo<RegisterCongratulationRouteArgs>(name);
}

class RegisterCongratulationRouteArgs {
  const RegisterCongratulationRouteArgs({
    this.key,
    this.isInstitution = false,
  });

  final Key? key;

  final bool isInstitution;

  @override
  String toString() {
    return 'RegisterCongratulationRouteArgs{key: $key, isInstitution: $isInstitution}';
  }
}

/// generated route for
/// [RegisterInstitutionPage]
class RegisterInstitutionRoute
    extends PageRouteInfo<RegisterInstitutionRouteArgs> {
  RegisterInstitutionRoute({
    Key? key,
    bool isUsingCurrentUser = false,
    List<PageRouteInfo>? children,
  }) : super(
          RegisterInstitutionRoute.name,
          args: RegisterInstitutionRouteArgs(
            key: key,
            isUsingCurrentUser: isUsingCurrentUser,
          ),
          initialChildren: children,
        );

  static const String name = 'RegisterInstitutionRoute';

  static const PageInfo<RegisterInstitutionRouteArgs> page =
      PageInfo<RegisterInstitutionRouteArgs>(name);
}

class RegisterInstitutionRouteArgs {
  const RegisterInstitutionRouteArgs({
    this.key,
    this.isUsingCurrentUser = false,
  });

  final Key? key;

  final bool isUsingCurrentUser;

  @override
  String toString() {
    return 'RegisterInstitutionRouteArgs{key: $key, isUsingCurrentUser: $isUsingCurrentUser}';
  }
}

/// generated route for
/// [RegisterVolunteerPage]
class RegisterVolunteerRoute extends PageRouteInfo<RegisterVolunteerRouteArgs> {
  RegisterVolunteerRoute({
    Key? key,
    bool isUsingCurrentUser = false,
    List<PageRouteInfo>? children,
  }) : super(
          RegisterVolunteerRoute.name,
          args: RegisterVolunteerRouteArgs(
            key: key,
            isUsingCurrentUser: isUsingCurrentUser,
          ),
          initialChildren: children,
        );

  static const String name = 'RegisterVolunteerRoute';

  static const PageInfo<RegisterVolunteerRouteArgs> page =
      PageInfo<RegisterVolunteerRouteArgs>(name);
}

class RegisterVolunteerRouteArgs {
  const RegisterVolunteerRouteArgs({
    this.key,
    this.isUsingCurrentUser = false,
  });

  final Key? key;

  final bool isUsingCurrentUser;

  @override
  String toString() {
    return 'RegisterVolunteerRouteArgs{key: $key, isUsingCurrentUser: $isUsingCurrentUser}';
  }
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
