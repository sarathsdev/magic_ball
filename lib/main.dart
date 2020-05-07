import'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(BallPage());


class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Ask Me Anything'),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Colors.pink,
                      Colors.blueAccent,
                      Colors.pink,
                      Colors.blueAccent,
                      Colors.pink

                    ])
            ),
          ),
        ),

        backgroundColor: Colors.blueAccent,

          body: Ball(),
      ),
    );
  }
}
 class Ball extends StatefulWidget {
   @override
   _BallState createState() => _BallState();
 }

 class _BallState extends State<Ball> {
  int ballNumber = 1;
   @override
   Widget build(BuildContext context) {
     return Center(
       child: FlatButton(
         onPressed:(){
           setState(() {
           ballNumber = Random().nextInt(5)+1;
           });
            },
           child: Image.asset('images/ball$ballNumber.png'),
       ),
     );
   }
 }

