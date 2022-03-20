import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardInside extends StatefulWidget {
   const CardInside({Key? key }) : super(key: key);
  // var image;
  @override
  State<CardInside> createState() => _CardInsideState();
}

class _CardInsideState extends State<CardInside> {

  ///String value;
  ///var image;

  _CardInsideState();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                // child: Image(image: ),
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  color: Colors.deepPurple,
                  child: Container(),
                ),
              ),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Container(
                  width: 90,
                  height: 90,
                  padding: const  EdgeInsets.all(12),
                  margin: const EdgeInsets.only(left: 16, right: 16, top: 30),
                  decoration:  BoxDecoration(color: Color.fromARGB(255, 242, 236, 246), borderRadius: BorderRadius.circular(90.0),),
                  child: const Text(''),
                ),
              ),
              Container(width: MediaQuery.of(context).size.width * 1, child: const Text('Food Name'),),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                padding: const  EdgeInsets.all(12),
                margin: const EdgeInsets.only(left: 16, right: 16, top: 12),
                decoration: const BoxDecoration(color: Color.fromARGB(255, 242, 236, 246)),
                child: const Text(''),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                padding: const  EdgeInsets.all(12),
                margin: const EdgeInsets.only(left: 16, right: 16, top: 12),
                decoration: const BoxDecoration(color: Color.fromARGB(255, 242, 236, 246)),
                child: const Text(''),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                padding: const  EdgeInsets.all(12),
                margin: const EdgeInsets.only(left: 16, right: 16, top: 12),
                decoration: const BoxDecoration(color: Color.fromARGB(255, 242, 236, 246)),
                child: const Text(''),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
