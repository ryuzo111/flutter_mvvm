import 'package:flutter_riverpod/flutter_riverpod.dart';

final titleProvider = Provider<String>((ref) {
  return 'riverpod  Demo Home Page';
});

final messageProvider = Provider<String>((ref) {
  return 'flutter message';
});

final countProvider = StateProvider<int>((ref) {
  return 0;
});
