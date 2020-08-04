import 'package:flutter/material.dart';
import 'package:ocarina/ocarina.dart';

class SecondRoute extends StatelessWidget {
  final player1 = OcarinaPlayer(asset: "audio/n1.m4a", loop: false);
  final player2 = OcarinaPlayer(asset: "audio/n1.m4a", loop: false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Audio Player"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              "Audio_First",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Container(
              height: 60,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  width: 5,
                  color: Colors.grey.shade700,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.play_circle_filled,
                        size: 35,
                      ),
                      onPressed: () async {
                        await player1.load();
                        await player1.play();
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.pause,
                        size: 35,
                      ),
                      onPressed: () {
                        player1.pause();
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.play_arrow,
                        size: 35,
                      ),
                      onPressed: () {
                        player1.resume();
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.stop,
                        size: 35,
                      ),
                      onPressed: () async {
                        await player1.stop();
                      }),
                ],
              ),
            ),
            Text(
              "Audio_Second",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Container(
              height: 60,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  width: 5,
                  color: Colors.grey.shade700,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.play_circle_filled,
                        size: 35,
                      ),
                      onPressed: () async {
                        await player1.load();
                        await player1.play();
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.pause,
                        size: 35,
                      ),
                      onPressed: () {
                        player1.pause();
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.play_arrow,
                        size: 35,
                      ),
                      onPressed: () {
                        player1.resume();
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.stop,
                        size: 35,
                      ),
                      onPressed: () async {
                        await player1.stop();
                      }),
                ],
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Home Page!'),
            ),
          ],
        ),
      ),
    );
  }
}
