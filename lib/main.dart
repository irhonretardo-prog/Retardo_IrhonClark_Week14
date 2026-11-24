import 'package:flutter/material.dart';
import 'login_screen.dart';
//import 'dashboard_screen.dart';

void main() {
  runApp(const ApexApp());
}

class ApexApp extends StatelessWidget {
  const ApexApp({super.key});

  @override
  Widget build(BuildContext context) {
    const neonLime = Color(0xFFC8E600);
    const charcoalBg = Color(0xFF1E2229);
    const cardSurface = Color(0xFF2A2F38);
    const mutedGray = Color(0xFF9CA3AF);

    return MaterialApp(
      title: 'APEX',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: charcoalBg,
        colorScheme: const ColorScheme.dark(
          primary: neonLime,
          onPrimary: Color(0xFF14171C),
          secondary: cardSurface,
          onSecondary: Colors.white,
          surface: cardSurface,
          onSurface: Colors.white,
        ),
        fontFamily: 'Roboto',
        textTheme: const TextTheme(
          headlineSmall: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w900,
            color: Colors.white,
            letterSpacing: 0.4,
          ),
          titleMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w800,
            color: Colors.white,
            letterSpacing: 0.3,
          ),
          bodyMedium: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: mutedGray,
          ),
          labelLarge: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w800,
            color: Color(0xFF14171C),
            letterSpacing: 0.8,
          ),
        ),
      ),

      // ============================================================
      // 1ST PAGE (DEFAULT FULL SCREEN - LOGIN)
      // Comment this to unlock 2nd Page
      // ============================================================
      home: const LoginScreen(),

      // ============================================================
      // 2ND PAGE (FULL SCREEN - GYM DASHBOARD):
      // Uncomment this to see Dashboard
      // ============================================================
      //home: const DashboardScreen(),
    );
  }
}