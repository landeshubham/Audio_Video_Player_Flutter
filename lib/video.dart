import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:iqplayer/iqplayer.dart';
//import 'package:http/http.dart';

class MyVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Video Player'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Video Player',
          style:
              TextStyle(fontStyle: FontStyle.italic, color: Colors.redAccent),
        ),
        backgroundColor: Colors.black,
        leading: Icon(Icons.music_video),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            RaisedButton(
              color: Colors.grey.shade800,
              child: Text(
                'Local_video_1',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => IQScreen(
                      title: "m1.mp4",
                      description: 'Local_video_1',
                      videoPlayerController: VideoPlayerController.asset(
                        'video/m1.mp4',
                      ),
                      iqTheme: IQTheme(
                        loadingProgress: SpinKitCircle(
                          color: Colors.red,
                        ),
                        playButtonColor: Colors.transparent,
                        videoPlayedColor: Colors.indigo,
                        playButton: (BuildContext context, bool isPlay,
                            AnimationController animationController) {
                          if (isPlay)
                            return Icon(
                              Icons.pause_circle_filled,
                              color: Colors.red,
                              size: 50,
                            );
                          return Icon(
                            Icons.play_circle_outline,
                            color: Colors.red,
                            size: 50,
                          );
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
            RaisedButton(
              color: Colors.grey.shade800,
              child: Text(
                'Network_Video',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => IQScreen(
                      title: "Nvideo.mp4",
                      description: 'Network_Video',
                      videoPlayerController: VideoPlayerController.network(
                        'https://d11b76aq44vj33.cloudfront.net/media/720/video/5def7824adbbc.mp4',
                      ),
                      iqTheme: IQTheme(
                        loadingProgress: SpinKitCircle(
                          color: Colors.red,
                        ),
                        playButtonColor: Colors.transparent,
                        videoPlayedColor: Colors.indigo,
                        playButton: (BuildContext context, bool isPlay,
                            AnimationController animationController) {
                          if (isPlay)
                            return Icon(
                              Icons.pause_circle_filled,
                              color: Colors.red,
                              size: 50,
                            );
                          return Icon(
                            Icons.play_circle_outline,
                            color: Colors.red,
                            size: 50,
                          );
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
