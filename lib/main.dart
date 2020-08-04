import 'audio.dart';
import 'video.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Audio & Video Player"),
      ),
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.amber.shade300,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                height: 200,
                width: 200,
                child: IconButton(
                  icon: Icon(
                    Icons.headset,
                    size: 100,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondRoute(),
                      ),
                    );
                  },
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    width: 5,
                    color: Colors.grey.shade700,
                  ),
                ),
              ),
              Text(
                "Audio",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 200,
                width: 200,
                child: IconButton(
                    icon: Icon(
                      Icons.play_circle_filled,
                      size: 100,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyHomePage(),
                        ),
                      );
                    }),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    width: 5,
                    color: Colors.grey.shade700,
                  ),
                ),
              ),
              Text(
                "Video",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
      ),
    );
  }
}
