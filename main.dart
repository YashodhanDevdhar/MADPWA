
import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Insert Image Demo')),
      body: Center(
        child: Image.asset('assets/images/famtitlab.jpg'),
      ),
    ),
  );
}
