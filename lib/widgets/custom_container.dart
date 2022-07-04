import 'package:flutter/material.dart';
import 'package:xylophone_app/data/repositories/audio_repo.dart';

class CustomContainer extends StatelessWidget {
  final Color color;
  final String notaNumber;
  const CustomContainer({this.color, this.notaNumber, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: color,
        child: InkWell(
          splashColor: Colors.grey,
          onTap: () {
            audioRepo.playNote(notaNumber);
          },
          child: Container(),
        ),
      ),
    );
  }
}
