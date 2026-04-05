import 'package:flutter/cupertino.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key, required this.photo });
  final String photo;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      color: Color(0xffFFFFFF),
      child:
      Image.asset(photo),

    );
  }
}
