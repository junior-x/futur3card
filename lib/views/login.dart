import 'package:consumindo_api/views/home.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  TextEditingController namePass = TextEditingController();
  // Login({
  //   required this.namePass
  // });

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 1,
          color: Color.fromARGB(255, 85, 66, 110),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 90,
                height: 90,
                decoration:  BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(45)),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(controller: widget.namePass,),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                margin: EdgeInsets.symmetric(horizontal: 16),
                color: Colors.white,
                child: TextButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => HomePage(name: widget.namePass.text))),
                  child: const Text('Entrar', style: TextStyle(color: Colors.black),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
