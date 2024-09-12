import 'package:flutter/material.dart';

// Clase para la configuracion del tema de la aplicacion
class AppTheme {
  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark
  );
}
