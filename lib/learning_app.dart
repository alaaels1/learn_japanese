import 'package:flutter/material.dart';
import 'package:learning_app/screens/home.dart';
import 'package:learning_app/screens/numbers.dart';
import 'package:learning_app/screens/family_members.dart';
import 'package:learning_app/screens/colors.dart';
import 'package:learning_app/screens/phrases.dart';
import 'package:learning_app/components/routs.dart';

class LearningApp extends StatelessWidget {
  const LearningApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learning App',
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        Routs.numbers: (context) => const NumberScreen(),
        Routs.familyMembers: (context) => const FamilyMembersScreen(),
        Routs.colors: (context) => const ColorsScreen(),
        Routs.phrases: (context) => const PhrasesScreen(),
      },
    );
  }
}