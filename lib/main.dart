import 'package:flutter/material.dart';
import 'ui/xylophone_ui.dart';

void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Xylophone',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const XylophoneUI());
  }
}
