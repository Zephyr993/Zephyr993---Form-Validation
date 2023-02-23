import 'package:flutter/material.dart';

class Form_Page extends StatefulWidget {
  const Form_Page({super.key});

  @override
  State<Form_Page> createState() => _Form_PageState();
}

class _Form_PageState extends State<Form_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 15, 58),
        appBar: AppBar(
          title: const Icon(Icons.arrow_back_ios_new_outlined),
          backgroundColor: Color.fromARGB(255, 0, 15, 58),
        ),
        body: Center(
            child: Column(
          children: [
            Image.asset(
              'asset/pics.png',
              width: 100,
              height: 100,
            ),
            const Text(
              "Login Page",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            const Padding(padding: EdgeInsets.all(5)),
            const Text(
              "Pls  sign to continue",
              style: TextStyle(color: Colors.white),
            ),
            Padding(padding: EdgeInsets.all(10)),
            TextField(
                decoration: InputDecoration(
              icon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              hintText: 'Enter your Email',
              hintStyle: TextStyle(color: Colors.white),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(18.0)),
            )),
            Padding(padding: EdgeInsets.all(5)),
            TextField(
                decoration: InputDecoration(
              icon: const Icon(
                Icons.lock,
                color: Colors.white,
              ),
              hintText: 'Enter your Password',
              hintStyle: TextStyle(color: Colors.white),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  borderSide: BorderSide(color: Colors.blue)),
            )),
            Padding(padding: EdgeInsets.all(5)),
            ElevatedButton(
              onPressed: () {
                print("Submit");
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.blueAccent, width: 5),
                ),
              ),
              child: const Text(
                "Login",
                style: TextStyle(
                  color: Color.fromARGB(255, 20, 50, 50),
                ),
              ),
            ),
            Text(
              "Forgot Password?",
              style: TextStyle(color: Color.fromARGB(255, 60, 232, 244)),
            )
          ],
           
        )));
  }
}
