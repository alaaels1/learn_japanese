import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String? photo;
  final String JText;
  final String EText;
  final String sound;
  const ItemModel({ this.photo, required this.JText, required this.EText, required this.sound});

    void playSound() async {
      final player = AudioPlayer();
      await player.play(AssetSource(sound));
  }

}