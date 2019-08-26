import 'package:flutter/material.dart';
import 'package:galaxy/main_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset("assets/background.png"),
        Container(
          child: Center(
            child: RaisedButton(
              color: Colors.transparent,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CameraScreen()));
              },
              child: Icon(
                Icons.photo_camera, color: Colors.white,size:25.0,
                ),
              ),
          ),
        ),Container(
          padding: EdgeInsets.only(top: 60.0,left: 155.0),
          child: Image(
            image: AssetImage("assets/icon.png"),
            fit: BoxFit.cover,
          )
        )
      ],
    );
  }
}

 


