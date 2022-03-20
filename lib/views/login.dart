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
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(18),
                      child: const Icon(
                        Icons.restaurant_menu,
                        size: 90,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'W e l c o m e',
                      style: TextStyle(
                          color: Colors.deepPurple[100], fontSize: 24),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: TextField(
                      controller: widget.namePass,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Name',
                        hintStyle: TextStyle(color: Colors.deepPurple[200]),
                        filled: true,
                        fillColor: Color.fromARGB(255, 59, 47, 75),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color.fromARGB(0, 255, 255, 255)),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: TextField(
                      ///controller: widget.namePass,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.deepPurple[200]),
                        filled: true,
                        fillColor: Color.fromARGB(255, 59, 47, 75),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color.fromARGB(0, 255, 255, 255)),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                margin: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: TextButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          HomePage(name: widget.namePass.text))),
                  child: const Text(
                    'Entrar',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
