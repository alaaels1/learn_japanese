import 'package:flutter/material.dart';

import '../components/item_builder.dart';
import '../models/item_model.dart';

class FamilyMembersScreen extends StatelessWidget {
  const FamilyMembersScreen({super.key});
  final List<ItemModel> FamilyMembers = const [
    ItemModel(
      photo: 'assets/images/family_members/family_father.png',
      JText: 'Chichi',
      EText: 'Father',
      sound: 'sounds/family_members/father_sound.mp3',
    ),
    ItemModel(
      photo: 'assets/images/family_members/family_mother.png',
      JText: 'Haha',
      EText: 'Mother',
      sound: 'sounds/family_members/mother_sound.mp3',
    ),
    ItemModel(
      photo: 'assets/images/family_members/family_son.png',
      JText: 'Musuko',
      EText: 'Son',
      sound: 'sounds/family_members/son_sound.mp3',
    ),
    ItemModel(
      photo: 'assets/images/family_members/family_daughter.png',
      JText: 'Musume',
      EText: 'Daughter',
      sound: 'sounds/family_members/daughter_sound.mp3',
    ),
    ItemModel(
      photo: 'assets/images/family_members/family_grandfather.png',
      JText: 'Ojīsan',
      EText: 'Grandfather',
      sound: 'sounds/family_members/grandfather_sound.mp3',
    ),
    ItemModel(
      photo: 'assets/images/family_members/family_grandmother.png',
      JText: 'Obāsan',
      EText: 'Grandmother',
      sound: 'sounds/family_members/grandmother_sound.mp3',
    ),
    ItemModel(
      photo: 'assets/images/family_members/family_older_brother.png',
      JText: 'Ani',
      EText: 'Older Brother',
      sound: 'sounds/family_members/older_brother_sound.mp3',
    ),
    ItemModel(
      photo: 'assets/images/family_members/family_older_sister.png',
      JText: 'Ane',
      EText: 'Older Sister',
      sound: 'sounds/family_members/older_sister_sound.mp3',
    ),
    ItemModel(
      photo: 'assets/images/family_members/family_younger_brother.png',
      JText: 'Otōto',
      EText: 'Younger Brother',
      sound: 'sounds/family_members/younger_brother_sound.mp3',
    ),
    ItemModel(
      photo: 'assets/images/family_members/family_younger_sister.png',
      JText: 'Imōto',
      EText: 'Younger Sister',
      sound: 'sounds/family_members/younger_sister_sound.mp3',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Family Members", style: TextStyle(color: Color(0xfff2f0ef))),
        backgroundColor: Color(0xff533d35),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_rounded, color: Colors.white),
        ),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return ItemBuilder(rowColor: Color(0xff548634), item: FamilyMembers[index],);
      },
      itemCount: FamilyMembers.length,
      )
    );
  }
}
