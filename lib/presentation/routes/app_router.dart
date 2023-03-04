import 'package:auto_route/auto_route.dart';
import 'package:next_starter/presentation/pages/home/home_page.dart';
import 'package:next_starter/presentation/pages/login/login_page.dart';
import 'package:next_starter/presentation/pages/register/register_multistep_page.dart';
import 'package:next_starter/presentation/pages/register/register_page.dart';
import 'package:next_starter/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:next_starter/presentation/pages/onboarding_page.dart';

part 'app_router.gr.dart';

@LazySingleton()
@MaterialAutoRouter(
  replaceInRouteName: 'Page|Screen,Route',
  routes: [
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: OnboardingPage),
    AutoRoute(page: RegisterPage),
    AutoRoute(page: RegisterMultiStepPage),
    AutoRoute(page: HomePage),
    AutoRoute(page: LoginPage),
  ],
)
class AppRouter extends _$AppRouter {}
