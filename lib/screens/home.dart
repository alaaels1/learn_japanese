import 'package:flutter/material.dart';

import '../components/category.dart';
import '../components/routs.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Toku", style: TextStyle(color: Color(0xfff2f0ef))),
        backgroundColor: Color(0xff533d35),
      ),
      body: Column(
        children: [
          Category(title: 'Numbers', color: Color(0xFFFF9F3B), route: Routs.numbers),
          Category(title: 'FamilyMembers', color: Color(0xFF5d8b3e), route: Routs.familyMembers),
          Category(title: 'Colors', color: Color(0xFF854cae), route: Routs.colors),
          Category(title: 'Phrases', color: Color(0xFF51b0d5), route: Routs.phrases),
        ],
      ),
    );
  }
}
