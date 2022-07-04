import '../services/audio_services.dart';

class AudioRepo {
  void playNote(String notaNumber) {
    audioServices.playNote(notaNumber);
  }
}

final AudioRepo audioRepo = AudioRepo();
