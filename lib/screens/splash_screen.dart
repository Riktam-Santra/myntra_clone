import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myntra_clone/providers/splash_screen_timer_provider.dart';
import 'package:myntra_clone/screens/home_screen.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(splashScreenProvider).when(
          data: (data) => HomeScreen(),
          error: (error, stackTrace) => Container(),
          loading: () => Scaffold(
            body: Center(
              child: Image.asset(
                "lib/res/media/images/logo/logo.png",
                height: 100,
              ),
            ),
          ),
        );
  }
}
