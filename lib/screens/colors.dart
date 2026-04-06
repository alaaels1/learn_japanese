import 'package:flutter/material.dart';
import 'package:learning_app/components/item_builder.dart';

import '../models/item_model.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({super.key});
  final List<ItemModel> Colors = const [
    ItemModel(
      photo: 'assets/images/colors/color_black.png',
      JText: 'Kuro',
      EText: 'Black',
      sound: 'sounds/colors/black.wav',
    ),
    ItemModel(
      photo: 'assets/images/colors/color_brown.png',
      JText: 'Chairo',
      EText: 'Brown',
      sound: 'sounds/colors/brown.wav',
    ),
    ItemModel(
      photo: 'assets/images/colors/color_dusty_yellow.png',
      JText: 'Kiiro kusunda',
      EText: 'Dusty Yellow',
      sound: 'sounds/colors/dusty yellow.wav',
    ),
    ItemModel(
      photo: 'assets/images/colors/color_gray.png',
      JText: 'Haiiro',
      EText: 'Gray',
      sound: 'sounds/colors/gray.wav',
    ),
    ItemModel(
      photo: 'assets/images/colors/color_green.png',
      JText: 'Midori',
      EText: 'Green',
      sound: 'sounds/colors/green.wav',
    ),
    ItemModel(
      photo: 'assets/images/colors/color_red.png',
      JText: 'Aka',
      EText: 'Red',
      sound: 'sounds/colors/red.wav',
    ),
    ItemModel(
      photo: 'assets/images/colors/color_white.png',
      JText: 'Shiro',
      EText: 'White',
      sound: 'sounds/colors/white.wav',
    ),
    ItemModel(
      photo: 'assets/images/colors/yellow.png',
      JText: 'Kiiro',
      EText: 'Yellow',
      sound: 'sounds/colors/yellow.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Colors", style: TextStyle(color: Color(0xfff2f0ef))),
        backgroundColor: Color(0xff533d35),
       leading:  IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_rounded, color: Color(0xffFFFFFF)),
        ),
      ),
      body: ListView.builder(itemBuilder: (context,index){
        return ItemBuilder(rowColor: Color(0xff7D40A2), item: Colors[index]);
      },itemCount:Colors.length ,)
    );
  }
}
