import 'package:flutter/material.dart';
import 'package:learning_app/models/item_model.dart';

import '../components/item_builder.dart';

class NumberScreen extends StatelessWidget {
  const NumberScreen({super.key});
  final List<ItemModel> Numbers = const [
    ItemModel(photo:'assets/images/numbers/number_one.png', JText: 'Ichi', EText: 'One', sound: 'sounds/numbers/number_one_sound.mp3'),
    ItemModel(photo:'assets/images/numbers/number_two.png', JText: 'Ni', EText: 'Two', sound: 'sounds/numbers/number_two_sound.mp3'),
    ItemModel(photo:'assets/images/numbers/number_three.png', JText: 'San', EText: 'Three', sound: 'sounds/numbers/number_three_sound.mp3'),
    ItemModel(photo:'assets/images/numbers/number_four.png', JText: 'Shi', EText: 'Four', sound: 'sounds/numbers/number_four_sound.mp3'),
    ItemModel(photo:'assets/images/numbers/number_five.png', JText: 'Go', EText: 'Five', sound: 'sounds/numbers/number_five_sound.mp3'),
    ItemModel(photo:'assets/images/numbers/number_six.png', JText: 'Roku', EText: 'Six', sound: 'sounds/numbers/number_six_sound.mp3'),
    ItemModel(photo:'assets/images/numbers/number_seven.png', JText: 'Shichi', EText: 'Seven', sound: 'sounds/numbers/number_seven_sound.mp3'),
    ItemModel(photo:'assets/images/numbers/number_eight.png', JText: 'Hachi', EText: 'Eight', sound: 'sounds/numbers/number_eight_sound.mp3'),
    ItemModel(photo:'assets/images/numbers/number_nine.png', JText: 'Kyuu', EText: 'Nine', sound: 'sounds/numbers/number_nine_sound.mp3'),
    ItemModel(photo:'assets/images/numbers/number_ten.png', JText: 'Juu', EText: 'Ten', sound: 'sounds/numbers/number_ten_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Numbers", style: TextStyle(color: Color(0xfff2f0ef))),
        backgroundColor: Color(0xff533d35),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_rounded, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ItemBuilder(rowColor: Color(0xffF9952F), item: Numbers[index],
          );
        },
        itemCount: Numbers.length,
      )
    );
  }
}
