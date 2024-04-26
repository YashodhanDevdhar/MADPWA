import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Gestures',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gestures'),
        ),
        body: Center(
          child: GestureDetector(
            child: Container(
              width: 100,
              height: 40,
              color: Colors.green,
              child: Text('Click Me')
            ),
            onTap: () {
              print('Box Clicked');
            },
          )
        )
      )
    );
  }
}