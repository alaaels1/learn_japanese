import 'package:flutter/cupertino.dart';
import '../models/item_model.dart';
import 'item_info.dart';

class ItemBuilder extends StatelessWidget {
  const ItemBuilder({super.key, required this.rowColor, required this.item,});
  final Color rowColor;
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: rowColor,
      child: Row(
        children: [
        Container(
        width: 100,
        color: Color(0xffFFFFFF),
          child: item.photo != null
              ? Image.asset(item.photo!)
              : null,


      ),
          Expanded(child: ItemInfo(item:item, onPressed: item.playSound,)),

        ],
      ),
    );
  }
}


