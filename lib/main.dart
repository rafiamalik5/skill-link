import 'package:flutter/material.dart';

import 'screens/welcome_screen.dart';
import 'screens/create_account_screen.dart';
import 'screens/login_screen.dart';
import 'screens/user_role_screen.dart';
import 'screens/skill_selection_screen.dart';
import 'screens/home_screen.dart';
import 'screens/profile_screen.dart';
import 'main_navigation_screen.dart';

void main() {
  runApp(const SkillLinkApp());
}

class SkillLinkApp extends StatelessWidget {
  const SkillLinkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SkillLink',
      theme: ThemeData(
        primaryColor: const Color(0xFFF9A825),
        fontFamily: 'Poppins',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFF9A825),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ),

      // 👇 Initial Screen
      initialRoute: '/welcome',

      // 👇 All Screens Connected Here
      routes: {
        '/welcome': (context) => const WelcomeScreen(),
        '/create': (context) => const CreateAccountScreen(),
        '/login': (context) => const LoginScreen(),
        '/role': (context) => const UserRoleScreen(),
        '/skills': (context) => const SkillSelectionScreen(),
        '/home': (context) => const HomeScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}
