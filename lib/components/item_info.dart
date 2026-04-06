import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/models/item_model.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.onPressed, required this.item});
  final ItemModel item;
  final VoidCallback onPressed;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item.JText,
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                item.EText,
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        IconButton(
          onPressed: item.playSound,
          icon: Icon(Icons.play_arrow, color: Color(0xffFFFFFF)),
        ),
      ],
    );
  }
}
