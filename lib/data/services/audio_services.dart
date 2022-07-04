import 'package:audioplayers/audioplayers.dart';

class AudioServices {
  AudioCache player = AudioCache();
  Future<void> playNote(String notaNumber) async {
    await player.play('musics/note_$notaNumber.wav');
  }
}

final AudioServices audioServices = AudioServices();
