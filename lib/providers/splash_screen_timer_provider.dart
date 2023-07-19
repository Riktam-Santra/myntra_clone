import 'package:hooks_riverpod/hooks_riverpod.dart';

final splashScreenProvider = FutureProvider<bool>((ref) async {
  await Future.delayed(const Duration(seconds: 2));
  return true;
});
