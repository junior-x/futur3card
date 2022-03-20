import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardInside extends StatefulWidget {
  final String titlePass;
  final String cookTimePass;
  final String thumbnailUrlPass;
  CardInside({
    required this.thumbnailUrlPass,
    required this.titlePass,
    required this.cookTimePass,
  });
  @override
  State<CardInside> createState() => _CardInsideState();
}

class _CardInsideState extends State<CardInside> {
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
                  child: Image.network(
                    widget.thumbnailUrlPass,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(left: 16, right: 16, top: 12),
                child: Text(
                  widget.titlePass,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 27,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.schedule,
                        color: Colors.deepPurple,
                        size: 18,
                      ),
                      const SizedBox(width: 7),
                      Text(
                        widget.cookTimePass,
                        style: const TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Container(
                  width: 90,
                  height: 90,
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.only(left: 16, right: 16, top: 12),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 242, 236, 246),
                    borderRadius: BorderRadius.circular(90.0),
                  ),
                  child: const Text(''),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                child: const Text('Food Name'),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(left: 16, right: 16, top: 12),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 242, 236, 246),
                    borderRadius: BorderRadius.circular(9.0)),
                child: const Text(''),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(left: 16, right: 16, top: 12),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 242, 236, 246),
                    borderRadius: BorderRadius.circular(9.0)),
                child: const Text(''),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(
                  left: 16,
                  right: 180,
                  top: 12,
                ),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 242, 236, 246),
                    borderRadius: BorderRadius.circular(9.0)),
                child: const Text(''),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                padding: const EdgeInsets.all(6),
                margin: const EdgeInsets.only(left: 16, right: 16, top: 60),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 242, 236, 246),
                    borderRadius: BorderRadius.circular(9.0)),
                child: const Text(''),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                padding: const EdgeInsets.all(6),
                margin: const EdgeInsets.only(
                    left: 16, right: 160, top: 12, bottom: 45),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 242, 236, 246),
                    borderRadius: BorderRadius.circular(9.0)),
                child: const Text(''),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                padding: const EdgeInsets.all(6),
                margin: const EdgeInsets.only(left: 30, right: 16, top: 12),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 242, 236, 246),
                    borderRadius: BorderRadius.circular(9.0)),
                child: const Text(''),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                padding: const EdgeInsets.all(6),
                margin: const EdgeInsets.only(left: 16, right: 16, top: 12),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 242, 236, 246),
                    borderRadius: BorderRadius.circular(9.0)),
                child: const Text(''),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                padding: const EdgeInsets.all(6),
                margin: const EdgeInsets.only(left: 16, right: 16, top: 12),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 242, 236, 246),
                    borderRadius: BorderRadius.circular(9.0)),
                child: const Text(''),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                padding: const EdgeInsets.all(6),
                margin: const EdgeInsets.only(left: 16, right: 16, top: 12),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 242, 236, 246),
                    borderRadius: BorderRadius.circular(9.0)),
                child: const Text(''),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                padding: const EdgeInsets.all(6),
                margin: const EdgeInsets.only(
                    left: 16, right: 120, top: 12, bottom: 30),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 242, 236, 246),
                    borderRadius: BorderRadius.circular(9.0)),
                child: const Text(''),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 45),
              ),
              Row(
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.only(left: 16, right: 16, top: 12),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 242, 236, 246),
                      borderRadius: BorderRadius.circular(90.0),
                    ),
                    child: const Text(''),
                  ),
                  Container(
                    width: 90,
                    height: 90,
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.only(left: 16, right: 16, top: 12),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 242, 236, 246),
                      borderRadius: BorderRadius.circular(90.0),
                    ),
                    child: const Text(''),
                  ),
                  Container(
                    width: 90,
                    height: 90,
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.only(left: 16, right: 16, top: 12),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 242, 236, 246),
                      borderRadius: BorderRadius.circular(90.0),
                    ),
                    child: const Text(''),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 45),
              )
            ],
          ),
        ),
      ),
    );
  }
}
