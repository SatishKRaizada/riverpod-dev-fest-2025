import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dev_fest_2025/themes/app_theme.dart';

final themeNotifierProvider = NotifierProvider<ThemeNotifier, ThemeData>(() => ThemeNotifier());

class ThemeNotifier extends Notifier<ThemeData> {
  @override
  ThemeData build() {
    final brightness = SchedulerBinding.instance.platformDispatcher.platformBrightness;
    return brightness == Brightness.dark ? AppTheme.darkTheme : AppTheme.lightTheme;
  }

  void toggleTheme() {
    state = state.brightness == Brightness.light ? AppTheme.darkTheme : AppTheme.lightTheme;
  }
}
