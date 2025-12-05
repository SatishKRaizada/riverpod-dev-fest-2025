import 'package:dev_fest_2025/modules/container_detail/container_detail.dart';
import 'package:dev_fest_2025/modules/dashboard/pods/theme_pod.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch theme provider
    final themeMode = ref.watch(themeNotifierProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Container Sales',
      theme: themeMode, // Use the theme from the provider
      home: const HomePage(),
    );
  }
}
