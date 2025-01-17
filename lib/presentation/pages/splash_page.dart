import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:raise_hope/common/extensions/extensions.dart';
import 'package:raise_hope/injection.dart';
import 'package:raise_hope/presentation/routes/app_router.dart';
import 'package:raise_hope/presentation/routes/app_router.gr.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    await 3.delayedSeconds;

    final auth = locator<FirebaseAuth>();
    final router = locator<AppRouter>();

    try {
      if (auth.currentUser == null) {
        router.replace(const OnboardingRoute());
        return;
      }

      final token = await auth.currentUser?.getIdTokenResult();
      if (token == null) {
        auth.signOut().catchError((_) {});
        router.replace(const OnboardingRoute());
        return;
      }

      final role = token.claims?['role'] as String?;
      if (role == null) {
        auth.signOut().catchError((_) {});
        router.replace(const OnboardingRoute());
        return;
      }

      debugPrint('role: $role');

      router.replace(const HomeRoute());
    } on Exception catch (e) {
      auth.signOut().catchError((_) {});
      if (context.mounted) {
        context.showSnackbar(title: 'Whoops!', message: e.toString());
      }
      router.replace(const OnboardingRoute());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 150,
              height: 150,
              fit: BoxFit.contain,
            )
          ],
        ),
      ),
    );
  }
}
