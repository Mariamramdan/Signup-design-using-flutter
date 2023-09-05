import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SecondScreen.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 550,
        width: 300,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft : Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        image: DecorationImage(
            image: AssetImage("assets/rm422-047.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 60, 0, 0),
                  child: Text("The best\napp for\n your plants" , style: TextStyle(
                    color: Colors.lightGreen[600],
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: SizedBox(
                        height: 40,
                        width: 400,
                        child: ElevatedButton(
                          style:  ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            textStyle: const TextStyle(
                              color: Colors.white,
                            ),
                            elevation: 12, //elevation of button
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  SecondScreen()),
                            );
                          },
                          child: const Text("Sign Up"),

                        ),
                      ),
                    ),

                ),
                Padding(
                    padding:const EdgeInsets.fromLTRB(90, 10, 0, 0),
                    child: Text("Create an account" , style: TextStyle(
                    color: Colors.green[400],
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                ),),

    )
              ],
            )
          ],
        ),
      ),
    ),
    );
  }
}
