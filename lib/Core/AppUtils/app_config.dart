import 'package:flutter/material.dart';

enum AppEnvironment { development, production }

class AppConfig {
  static String get apiUrl => 'https://her-health.onrender.com/';

  static Iterable<Locale> get locals => const [
        Locale('en'),
        Locale('zh'),
        Locale('ja'),
        Locale('uk'),
        Locale('it'),
        Locale('ru'),
        Locale('fr'),
        Locale('es'),
        Locale('nl'),
        Locale('sv'),
        Locale('pt'),
      ];

  static Iterable<LocalizationsDelegate<dynamic>>? get localizationsDelegates =>
      [];
}
