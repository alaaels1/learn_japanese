import 'package:flutter/material.dart';

class Category extends StatelessWidget {

  const Category({super.key, required this.title, required this.color, required this.route});
  final String title;
  final Color color;
  final String route;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        width: double.infinity,
        height: 70,
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            title,
            style:
            TextStyle(
              color: Color(0xfff2f0ef),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
