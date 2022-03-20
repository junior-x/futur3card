import 'package:flutter/material.dart';

void main() {
  runApp(const CardInside());
}

class CardInside extends StatefulWidget {
  const CardInside({Key? key}) : super(key: key);

  @override
  State<CardInside> createState() => _CardInsideState();
}

class _CardInsideState extends State<CardInside> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              AspectRatio(aspectRatio: 16 / 9,
              // child: Image(image: ),
              child: Container(width: MediaQuery.of(context).size.width * 1, color: Colors.deepPurple,),
              )
            ],
          ),
        ),
      ),
    );
  }
}