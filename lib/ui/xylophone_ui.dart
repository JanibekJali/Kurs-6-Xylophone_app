import 'package:flutter/material.dart';
import 'package:xylophone_app/widgets/app_bar_widgets.dart';
import 'package:xylophone_app/widgets/body_widgets/body_widget..dart';

class XylophoneUI extends StatefulWidget {
  const XylophoneUI({Key key}) : super(key: key);
  @override
  _XylophoneUIState createState() => _XylophoneUIState();
}

class _XylophoneUIState extends State<XylophoneUI> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidgets(),
      body: BodyWidget(),
    );
  }
}
