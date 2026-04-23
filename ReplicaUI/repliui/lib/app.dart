import 'package:flutter/material.dart';

import 'screens/academic_background_page.dart';
import 'theme/app_theme.dart';

class UcbAcademicoApp extends StatelessWidget {
  const UcbAcademicoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      home: const AcademicBackgroundPage(),
    );
  }
}
