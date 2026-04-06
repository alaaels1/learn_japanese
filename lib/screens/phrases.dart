import 'package:flutter/material.dart';
import '../components/phrases_builder.dart';
import '../models/item_model.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({super.key});
  final List<ItemModel> Phrases = const [
    ItemModel(
      JText: 'Kimasu ka?',
      EText: 'Are you coming?',
      sound: 'sounds/phrases/are_you_coming.wav',
    ),
    ItemModel(
      JText: 'Kōdoku shinai de ne',
      EText: 'Don’t forget to subscribe',
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    ItemModel(
      JText: 'Kibun wa dō?',
      EText: 'How are you feeling?',
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    ItemModel(
      JText: 'Anime ga daisuki',
      EText: 'I love anime',
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    ItemModel(
      JText: 'Puroguramingu ga daisuki',
      EText: 'I love programming',
      sound: 'sounds/phrases/i_love_programming.wav',
    ),
    ItemModel(
      JText: 'Puroguramingu wa kantan desu',
      EText: 'Programming is easy',
      sound: 'sounds/phrases/programming_is_easy.wav',
    ),
    ItemModel(
      JText: 'Onamae wa nan desu ka?',
      EText: 'What is your name?',
      sound: 'sounds/phrases/what_is_your_name.wav',
    ),
    ItemModel(
      JText: 'Doko e iku no?',
      EText: 'Where are you going?',
      sound: 'sounds/phrases/where_are_you_going.wav',
    ),
    ItemModel(
      JText: 'Hai, ikimasu',
      EText: 'Yes, I’m coming',
      sound: 'sounds/phrases/yes_im_coming.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phrases", style: TextStyle(color: Color(0xfff2f0ef))),
        backgroundColor: Color(0xff533d35),
        leading:  IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_rounded, color: Colors.white),
        ),
      ),
      body: ListView.builder(itemBuilder: (context,index){
        return PhrasesBuilder( item: Phrases[index], rowColor: Color(0xff47A5CB));
      },itemCount:Phrases.length ,)
    );
  }
}
