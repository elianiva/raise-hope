// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i17;
import 'package:flutter/material.dart' as _i18;
import 'package:raise_hope/presentation/layouts/home/home_discussion_page.dart'
    as _i4;
import 'package:raise_hope/presentation/layouts/home/home_main_page.dart'
    as _i5;
import 'package:raise_hope/presentation/layouts/home/home_mission_page.dart'
    as _i6;
import 'package:raise_hope/presentation/pages/discussion/chat_list_page.dart'
    as _i1;
import 'package:raise_hope/presentation/pages/discussion/chat_page.dart' as _i2;
import 'package:raise_hope/presentation/pages/hero_empty_router_page.dart'
    as _i3;
import 'package:raise_hope/presentation/pages/home/home_page.dart' as _i7;
import 'package:raise_hope/presentation/pages/karma/main/karma_main_page.dart'
    as _i8;
import 'package:raise_hope/presentation/pages/login/login_page.dart' as _i9;
import 'package:raise_hope/presentation/pages/mission/mission_detail_page.dart'
    as _i10;
import 'package:raise_hope/presentation/pages/onboarding_page.dart' as _i11;
import 'package:raise_hope/presentation/pages/profile/profile_page.dart'
    as _i12;
import 'package:raise_hope/presentation/pages/register/institution/register_institution_page.dart'
    as _i14;
import 'package:raise_hope/presentation/pages/register/register_congratulation_page.dart'
    as _i13;
import 'package:raise_hope/presentation/pages/register/volunteer/register_volunteer_page.dart'
    as _i15;
import 'package:raise_hope/presentation/pages/splash_page.dart' as _i16;

abstract class $AppRouter extends _i17.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i17.PageFactory> pagesMap = {
    ChatListRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ChatListPage(),
      );
    },
    ChatRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ChatPage(),
      );
    },
    HeroEmptyRouterRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HeroEmptyRouterPage(),
      );
    },
    HomeDiscussionRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomeDiscussionPage(),
      );
    },
    HomeMainRoute.name: (routeData) {
      final args = routeData.argsAs<HomeMainRouteArgs>(
          orElse: () => const HomeMainRouteArgs());
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.HomeMainPage(key: args.key),
      );
    },
    HomeMissionRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomeMissionPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.HomePage(),
      );
    },
    KarmaMainRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.KarmaMainPage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.LoginPage(
          key: args.key,
          isInstitution: args.isInstitution,
        ),
      );
    },
    MissionDetailRoute.name: (routeData) {
      final args = routeData.argsAs<MissionDetailRouteArgs>();
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.MissionDetailPage(
          key: args.key,
          heroTag: args.heroTag,
          id: args.id,
        ),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.OnboardingPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.ProfilePage(),
      );
    },
    RegisterCongratulationRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterCongratulationRouteArgs>(
          orElse: () => const RegisterCongratulationRouteArgs());
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.RegisterCongratulationPage(
          key: args.key,
          isInstitution: args.isInstitution,
        ),
      );
    },
    RegisterInstitutionRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterInstitutionRouteArgs>(
          orElse: () => const RegisterInstitutionRouteArgs());
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.RegisterInstitutionPage(
          key: args.key,
          isUsingCurrentUser: args.isUsingCurrentUser,
        ),
      );
    },
    RegisterVolunteerRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterVolunteerRouteArgs>(
          orElse: () => const RegisterVolunteerRouteArgs());
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.RegisterVolunteerPage(
          key: args.key,
          isUsingCurrentUser: args.isUsingCurrentUser,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.SplashPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.ChatListPage]
class ChatListRoute extends _i17.PageRouteInfo<void> {
  const ChatListRoute({List<_i17.PageRouteInfo>? children})
      : super(
          ChatListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatListRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ChatPage]
class ChatRoute extends _i17.PageRouteInfo<void> {
  const ChatRoute({List<_i17.PageRouteInfo>? children})
      : super(
          ChatRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HeroEmptyRouterPage]
class HeroEmptyRouterRoute extends _i17.PageRouteInfo<void> {
  const HeroEmptyRouterRoute({List<_i17.PageRouteInfo>? children})
      : super(
          HeroEmptyRouterRoute.name,
          initialChildren: children,
        );

  static const String name = 'HeroEmptyRouterRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomeDiscussionPage]
class HomeDiscussionRoute extends _i17.PageRouteInfo<void> {
  const HomeDiscussionRoute({List<_i17.PageRouteInfo>? children})
      : super(
          HomeDiscussionRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeDiscussionRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomeMainPage]
class HomeMainRoute extends _i17.PageRouteInfo<HomeMainRouteArgs> {
  HomeMainRoute({
    _i18.Key? key,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          HomeMainRoute.name,
          args: HomeMainRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeMainRoute';

  static const _i17.PageInfo<HomeMainRouteArgs> page =
      _i17.PageInfo<HomeMainRouteArgs>(name);
}

class HomeMainRouteArgs {
  const HomeMainRouteArgs({this.key});

  final _i18.Key? key;

  @override
  String toString() {
    return 'HomeMainRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.HomeMissionPage]
class HomeMissionRoute extends _i17.PageRouteInfo<void> {
  const HomeMissionRoute({List<_i17.PageRouteInfo>? children})
      : super(
          HomeMissionRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeMissionRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i7.HomePage]
class HomeRoute extends _i17.PageRouteInfo<void> {
  const HomeRoute({List<_i17.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i8.KarmaMainPage]
class KarmaMainRoute extends _i17.PageRouteInfo<void> {
  const KarmaMainRoute({List<_i17.PageRouteInfo>? children})
      : super(
          KarmaMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'KarmaMainRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i9.LoginPage]
class LoginRoute extends _i17.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i18.Key? key,
    bool isInstitution = false,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(
            key: key,
            isInstitution: isInstitution,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i17.PageInfo<LoginRouteArgs> page =
      _i17.PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({
    this.key,
    this.isInstitution = false,
  });

  final _i18.Key? key;

  final bool isInstitution;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, isInstitution: $isInstitution}';
  }
}

/// generated route for
/// [_i10.MissionDetailPage]
class MissionDetailRoute extends _i17.PageRouteInfo<MissionDetailRouteArgs> {
  MissionDetailRoute({
    _i18.Key? key,
    String? heroTag,
    required String id,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          MissionDetailRoute.name,
          args: MissionDetailRouteArgs(
            key: key,
            heroTag: heroTag,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'MissionDetailRoute';

  static const _i17.PageInfo<MissionDetailRouteArgs> page =
      _i17.PageInfo<MissionDetailRouteArgs>(name);
}

class MissionDetailRouteArgs {
  const MissionDetailRouteArgs({
    this.key,
    this.heroTag,
    required this.id,
  });

  final _i18.Key? key;

  final String? heroTag;

  final String id;

  @override
  String toString() {
    return 'MissionDetailRouteArgs{key: $key, heroTag: $heroTag, id: $id}';
  }
}

/// generated route for
/// [_i11.OnboardingPage]
class OnboardingRoute extends _i17.PageRouteInfo<void> {
  const OnboardingRoute({List<_i17.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i12.ProfilePage]
class ProfileRoute extends _i17.PageRouteInfo<void> {
  const ProfileRoute({List<_i17.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i13.RegisterCongratulationPage]
class RegisterCongratulationRoute
    extends _i17.PageRouteInfo<RegisterCongratulationRouteArgs> {
  RegisterCongratulationRoute({
    _i18.Key? key,
    bool isInstitution = false,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          RegisterCongratulationRoute.name,
          args: RegisterCongratulationRouteArgs(
            key: key,
            isInstitution: isInstitution,
          ),
          initialChildren: children,
        );

  static const String name = 'RegisterCongratulationRoute';

  static const _i17.PageInfo<RegisterCongratulationRouteArgs> page =
      _i17.PageInfo<RegisterCongratulationRouteArgs>(name);
}

class RegisterCongratulationRouteArgs {
  const RegisterCongratulationRouteArgs({
    this.key,
    this.isInstitution = false,
  });

  final _i18.Key? key;

  final bool isInstitution;

  @override
  String toString() {
    return 'RegisterCongratulationRouteArgs{key: $key, isInstitution: $isInstitution}';
  }
}

/// generated route for
/// [_i14.RegisterInstitutionPage]
class RegisterInstitutionRoute
    extends _i17.PageRouteInfo<RegisterInstitutionRouteArgs> {
  RegisterInstitutionRoute({
    _i18.Key? key,
    bool isUsingCurrentUser = false,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          RegisterInstitutionRoute.name,
          args: RegisterInstitutionRouteArgs(
            key: key,
            isUsingCurrentUser: isUsingCurrentUser,
          ),
          initialChildren: children,
        );

  static const String name = 'RegisterInstitutionRoute';

  static const _i17.PageInfo<RegisterInstitutionRouteArgs> page =
      _i17.PageInfo<RegisterInstitutionRouteArgs>(name);
}

class RegisterInstitutionRouteArgs {
  const RegisterInstitutionRouteArgs({
    this.key,
    this.isUsingCurrentUser = false,
  });

  final _i18.Key? key;

  final bool isUsingCurrentUser;

  @override
  String toString() {
    return 'RegisterInstitutionRouteArgs{key: $key, isUsingCurrentUser: $isUsingCurrentUser}';
  }
}

/// generated route for
/// [_i15.RegisterVolunteerPage]
class RegisterVolunteerRoute
    extends _i17.PageRouteInfo<RegisterVolunteerRouteArgs> {
  RegisterVolunteerRoute({
    _i18.Key? key,
    bool isUsingCurrentUser = false,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          RegisterVolunteerRoute.name,
          args: RegisterVolunteerRouteArgs(
            key: key,
            isUsingCurrentUser: isUsingCurrentUser,
          ),
          initialChildren: children,
        );

  static const String name = 'RegisterVolunteerRoute';

  static const _i17.PageInfo<RegisterVolunteerRouteArgs> page =
      _i17.PageInfo<RegisterVolunteerRouteArgs>(name);
}

class RegisterVolunteerRouteArgs {
  const RegisterVolunteerRouteArgs({
    this.key,
    this.isUsingCurrentUser = false,
  });

  final _i18.Key? key;

  final bool isUsingCurrentUser;

  @override
  String toString() {
    return 'RegisterVolunteerRouteArgs{key: $key, isUsingCurrentUser: $isUsingCurrentUser}';
  }
}

/// generated route for
/// [_i16.SplashPage]
class SplashRoute extends _i17.PageRouteInfo<void> {
  const SplashRoute({List<_i17.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}
