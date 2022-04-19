import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Xylophone',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Xylophone());
  }
}

class Xylophone extends StatefulWidget {
  const Xylophone({Key key}) : super(key: key);

  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  AudioCache player = AudioCache();

  // final player = AudioCache();

  // // call this method when desired
  // player.play('explosion.mp3');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff283136),
        title: const Text('Flutter Xylophone'),
      ),
      body: Center(
        child: Column(children: [
          _buildContainer(
            tus: const Color(0xffEF443A),
            notaNumber: '1',
            // kelgenSplashTus: Colors.black,
          ),
          _buildContainer(
            tus: const Color(0xffF99700),
            notaNumber: '2',
            // kelgenSplashTus: Colors.white,
          ),
          _buildContainer(
            tus: const Color(0xffFFE93B),
            notaNumber: '3',
            // kelgenSplashTus: Colors.red,
          ),
          _buildContainer(
            tus: const Color(0xff4CB050),
            notaNumber: '4',
            // kelgenSplashTus: Colors.yellow,
          ),
          _buildContainer(
            tus: const Color(0xff2E968C),
            notaNumber: '5',
          ),
          _buildContainer(
            tus: const Color(0xff2996F5),
            notaNumber: '6',
          ),
          _buildContainer(
            tus: const Color(0xff9B28B1),
            notaNumber: '7',
          ),
          // _buildContainer0(Colors.yellow, '1')
          // _buildContainer1(Colors.white),
          // _buildContainer2(Colors.red),
          // _buildContainer3(tus: Colors.yellow),
        ]),
      ),
    );
  }

// {} -- Aty menen beret
  Expanded _buildContainer({
    @required Color tus,
    @required String notaNumber,
  }) {
    return Expanded(
      child: Material(
        color: tus,
        child: InkWell(
          splashColor: Colors.grey,
          onTap: () {
            player.play('musics/note_$notaNumber.wav');
          },
          child: Container(),
        ),
      ),
    );
  }
}

// ruchnoi method bolup alsa bolot
Expanded buildCont(Color tus, String notaNumber) {
  return Expanded(
    child: Material(
      color: tus,
      child: InkWell(
        splashColor: Colors.grey,
        onTap: () {
          // player.play('musics/note_$notaNumber.wav');
        },
        child: Container(),
      ),
    ),
  );
}
//   Expanded _buildContainer0(
//     Color tus,
//     String notaNumber,
//   ) {
//     return Expanded(
//       child: Material(
//         color: tus,
//         child: InkWell(
//           splashColor: Colors.grey,
//           onTap: () {
//             player.play('musics/note_$notaNumber.wav');
//           },
//           child: Container(),
//         ),
//       ),
//     );
//   }
// }

// Aty jok method birok sozsuz berilish kerek
Expanded _buildContainer1(
  Color tus,
) {
  return Expanded(
      child: Container(
    color: tus,
  ));
}

// Aty jok birok dannyi berbesener dele ishtei beret
Expanded _buildContainer2([
  Color tus,
]) {
  return Expanded(
      child: Container(
    color: tus,
  ));
}

// Aty menen sozsuz berish kerek
Expanded _buildContainer3({
  @required Color tus,
}) {
  return Expanded(
      child: Container(
    color: tus,
  ));
}


// DRY code - Don't Repeat Your Self 