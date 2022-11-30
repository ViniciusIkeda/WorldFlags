import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text("WorldFlags"),
          backgroundColor: Colors.black,
        ),
        body: Flags(),
      ),
    ),
  );
}
class Flags extends StatefulWidget {
  const Flags({Key? key}) : super(key: key);

  @override
  State<Flags> createState() => _FlagsState();
}

class _FlagsState extends State<Flags> {
  var Flags = 1;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(   children: <Widget>[
        Expanded(
          child: TextButton(
            onPressed: () {
              setState((){
                Flags = Random().nextInt(254) + 1;
              });
            },
            child: Image.asset("images/Flags ($Flags).png"),
          ),
        ),
      ],
      ),
    );
  }
}
