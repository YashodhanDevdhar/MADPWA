import 'package:flutter/material.dart';

//Example for explaining Flutter Navigation and Routing
void main() {
  runApp(MaterialApp(
    title: 'Flutter Navigation',
    theme: ThemeData(
// This is the theme of your application.
      primarySwatch: Colors.green,
    ),
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: TextButton(
          style: TextButton.styleFrom(
                textStyle: TextStyle(fontSize: 20),
                foregroundColor: Colors.black,
                backgroundColor: Colors.cyan,

          ),

          child: Text('Click Here'),
          
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: TextButton(
          style: TextButton.styleFrom(
                textStyle: TextStyle(fontSize: 20),
                foregroundColor: Colors.black,
                backgroundColor: Colors.cyan,

          ),
          
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back'),
        ),
      ),
    );
  }
}
