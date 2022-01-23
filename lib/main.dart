import 'package:flutter/material.dart';
import 'package:ocarina/ocarina.dart';

void main() {
  runApp(const ElySays());
}

class ElySays extends StatelessWidget {
  const ElySays({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () async {
                      final player = OcarinaPlayer(
                        asset: 'assets/audios/assets_note1.wav',
                        package: 'elysays',
                        loop: true,
                        volume: 1.0,
                      );

                      await player.load();
                      print(Text('Pressed'));
                    },
                    child: Text(
                      'Press me!',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
