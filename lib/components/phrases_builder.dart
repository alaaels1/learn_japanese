import 'package:flutter/cupertino.dart';
import '../models/item_model.dart';
import 'item_info.dart';

class PhrasesBuilder extends StatelessWidget {
  const PhrasesBuilder({super.key, required this.rowColor, required this.item,});
  final Color rowColor;
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: rowColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(child: ItemInfo(item:item, onPressed: item.playSound,)),

        ],
      ),
    );
  }
}


